(() => {
  const ws = new WebSocket("ws://localhost:35729");
  document.querySelector("#nsutils-side-preview").click();

  // const iframe = document.querySelector("#nsutils-side-preview-iframe");

  // iframe.style.position = "fixed";
  // iframe.style.top = "0";
  // iframe.style.left = "0";
  // iframe.style.width = "100vw";
  // iframe.style.height = "100vh";
  ws.onmessage = (msg) => {
    try {
      const data = JSON.parse(msg.data);
      if (data.type === "reload") {
        document.querySelector("div.cm-content").innerText = data.content;
        setTimeout(() => {
          document.querySelector("#preview-btn[value='Preview']").click();
        }, 200);
      }
    } catch (e) {
      console.error("❌ Chyba při parsování JSONu:", e);
    }
  };
})();
