import { WebSocketServer } from "ws";
import chokidar from "chokidar";
import fs from "fs";

const wss = new WebSocketServer({ port: 35729 });

wss.on("connection", (ws) => {
  console.log("🔌 Prohlížeč připojen");
}); 

// vezmi cestu k souboru z argumentu
const filePath = process.argv[2];

if (!filePath) {
  console.error("❌ Musíš zadat cestu k souboru jako argument!");
  console.error("👉 Použití: node reload-server.js ./data.json");
  process.exit(1);
}

// Sleduj všechny změny v aktuální složce (můžeš si změnit cestu)
const watcher = chokidar.watch(".", {
  ignored: /node_modules|\.git/,
  ignoreInitial: true,
});

watcher.on("all", (event, path) => {
  console.log(`✏️ Změna: ${path}`);

  const content= fs.readFileSync(filePath, "utf-8");
  const payload = {
    type: "reload",
    content,
  };

  // Pošli reload do všech připojených klientů
  wss.clients.forEach((client) => {
    if (client.readyState === 1) {
      client.send(JSON.stringify(payload));
    }
  });
});

console.log("✅ WebSocket server běží na ws://localhost:35729");
