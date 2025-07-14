<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sanju ❤️ Deepak</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #ffebee;
            overflow-x: hidden;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
        }
        
        header {
            background-color: #ff7675;
            color: white;
            padding: 20px 0;
            border-radius: 0 0 20px 20px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        
        h1 {
            margin: 0;
            font-size: 2.5em;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
        }
        
        .hearts {
            font-size: 2em;
            animation: pulse 1.5s infinite;
            display: inline-block;
        }
        
        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.3); }
            100% { transform: scale(1); }
        }
        
        .love-message {
            background-color: white;
            padding: 20px;
            border-radius: 15px;
            margin: 30px 0;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            position: relative;
        }
        
        .love-message::before {
            content: "";
            position: absolute;
            top: -10px;
            left: 50%;
            transform: translateX(-50%);
            border-width: 0 10px 10px 10px;
            border-style: solid;
            border-color: transparent transparent white transparent;
        }
        
        .love-button {
            background-color: #ff7675;
            color: white;
            border: none;
            padding: 15px 30px;
            font-size: 1.2em;
            border-radius: 50px;
            cursor: pointer;
            margin: 10px;
            transition: all 0.3s;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
        
        .love-button:hover {
            background-color: #e84393;
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.3);
        }
        
        .love-button:active {
            transform: translateY(1px);
        }
        
        .photo-frame {
            width: 200px;
            height: 200px;
            margin: 20px auto;
            border: 10px solid white;
            border-radius: 50%;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            background-color: #fdcb6e;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-size: 3em;
        }
        
        .memories {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
            margin: 30px 0;
        }
        
        .memory {
            width: 120px;
            height: 120px;
            background-color: #fdcb6e;
            border-radius: 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-size: 2em;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: all 0.3s;
        }
        
        .memory:hover {
            transform: rotate(5deg) scale(1.1);
        }
        
        footer {
            margin-top: 50px;
            padding: 20px;
            background-color: #ff7675;
            color: white;
            border-radius: 20px 20px 0 0;
        }
        
        .click-counter {
            font-size: 1.2em;
            margin-top: 20px;
            color: #e84393;
            font-weight: bold;
        }
        
        .floating-hearts {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: 100;
        }
        
        .heart {
            position: absolute;
            font-size: 20px;
            color: #ff7675;
            animation: float 4s ease-in-out infinite;
            opacity: 0;
        }
        
        @keyframes float {
            0% {
                transform: translateY(0) rotate(0deg);
                opacity: 1;
            }
            100% {
                transform: translateY(-100vh) rotate(360deg);
                opacity: 0;
            }
        }
    </style>
</head>
<body>
    <div class="floating-hearts" id="heartsContainer"></div>
    
    <header>
        <div class="container">
            <h1>Sanju <span class="hearts">❤️</span> Deepak</h1>
            <p>Our Beautiful Love Story</p>
        </div>
    </header>
    
    <div class="container">
        <div class="photo-frame">
            S + D
        </div>
        
        <div class="love-message">
            <h2>My Dear Deepak,</h2>
            <p>Every moment with you feels like a beautiful dream. You make my life so special and I just wanted to tell you how much I love you!</p>
            <p>No matter how many times I say it, it will never be enough to express how much you mean to me.</p>
        </div>
        
        <button class="love-button" id="loveButton">Click to See My Love!</button>
        <button class="love-button" id="hugButton">Send Virtual Hug!</button>
        <button class="love-button" id="kissButton">Send Virtual Kiss!</button>
        
        <div class="click-counter" id="clickCounter">You've expressed your love 0 times!</div>
        
        <h2>Our Special Memories</h2>
        <div class="memories">
            <div class="memory">❤️</div>
            <div class="memory">😊</div>
            <div class="memory">💑</div>
            <div class="memory">🌹</div>
            <div class="memory">🎉</div>
            <div class="memory">💝</div>
        </div>
    </div>
    
    <footer>
        <div class="container">
            <p>Made with ❤️ by Sanju for Deepak</p>
            <p>Every click is another "I Love You" in my heart</p>
        </div>
    </footer>
    
    <script>
        let clickCount = 0;
        const loveButton = document.getElementById('loveButton');
        const hugButton = document.getElementById('hugButton');
        const kissButton = document.getElementById('kissButton');
        const clickCounter = document.getElementById('clickCounter');
        const heartsContainer = document.getElementById('heartsContainer');
        
        const messages = [
            "I love you more than anything!",
            "You're the best thing that ever happened to me!",
            "My heart beats only for you!",
            "Every day with you is a blessing!",
            "You're my sunshine on cloudy days!",
            "I fall in love with you more every day!",
            "You complete me in every way!",
            "My love for you is endless!",
            "You're my dream come true!",
            "I'm so lucky to have you!"
        ];
        
        const emojis = ['❤️', '💖', '💕', '💓', '💗', '💘', '💝', '💞', '💟', '🥰', '😍', '🤗', '😘'];
        
        loveButton.addEventListener('click', function() {
            clickCount++;
            updateCounter();
            createHearts();
            showRandomMessage();
        });
        
        hugButton.addEventListener('click', function() {
            clickCount++;
            updateCounter();
            createHearts('🤗');
            alert('Sending a big warm hug to Deepak! 🤗');
        });
        
        kissButton.addEventListener('click', function() {
            clickCount++;
            updateCounter();
            createHearts('😘');
            alert('Sending sweet kisses to Deepak! 😘💋');
        });
        
        function updateCounter() {
            clickCounter.textContent = `You've expressed your love ${clickCount} times!`;
        }
        
        function showRandomMessage() {
            const randomMessage = messages[Math.floor(Math.random() * messages.length)];
            alert(randomMessage);
        }
        
        function createHearts(emoji = null) {
            for (let i = 0; i < 20; i++) {
                const heart = document.createElement('div');
                heart.classList.add('heart');
                heart.textContent = emoji || emojis[Math.floor(Math.random() * emojis.length)];
                heart.style.left = Math.random() * 100 + 'vw';
                heart.style.animationDuration = 2 + Math.random() * 3 + 's';
                heart.style.fontSize = 20 + Math.random() * 30 + 'px';
                heartsContainer.appendChild(heart);
                
                setTimeout(() => {
                    heart.remove();
                }, 4000);
            }
        }
    </script>
</body>
</html>
