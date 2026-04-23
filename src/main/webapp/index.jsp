<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Butterfly Shop — Modern E-Commerce</title>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --bg: linear-gradient(135deg, #fff9fc, #f6f3ff, #eefcff);
            --primary: #4b2e83;
            --secondary: #ff69b4;
            --accent: #7c4dff;
            --light-accent: #b388ff;
            --surface: rgba(255, 255, 255, 0.85);
            --card: rgba(255, 255, 255, 0.92);
            --muted: #6f6b7d;
            --success: #28a745;
            --radius: 18px;
            --container: 1200px;
            --shadow: 0 10px 30px rgba(91, 61, 136, 0.12);
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Inter, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 20px;
        }

        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(124, 77, 255, 0.08);
        }

        .header-inner {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
            padding: 16px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: Poppins, sans-serif;
            font-size: 24px;
            font-weight: 800;
            color: var(--primary);
        }

        .brand i {
            color: var(--secondary);
            font-size: 24px;
        }

        nav.main-nav ul {
            display: flex;
            list-style: none;
            gap: 12px;
            margin: 0;
            padding: 0;
        }

        nav.main-nav a {
            padding: 10px 14px;
            border-radius: 999px;
            font-weight: 600;
            transition: 0.3s ease;
        }

        nav.main-nav a:hover {
            background: rgba(179, 136, 255, 0.12);
            color: var(--secondary);
        }

        .search {
            display: flex;
            align-items: center;
            gap: 10px;
            background: white;
            border-radius: 999px;
            padding: 10px 16px;
            min-width: 280px;
            box-shadow: var(--shadow);
        }

        .search input {
            border: none;
            outline: none;
            width: 100%;
            font-size: 14px;
            background: transparent;
        }

        .icon-btn {
            border: none;
            background: transparent;
            cursor: pointer;
            font-size: 18px;
            color: var(--primary);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .cart {
            position: relative;
            padding: 8px;
        }

        .cart-count {
            position: absolute;
            top: -5px;
            right: -5px;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background: var(--secondary);
            color: white;
            font-size: 11px;
            display: grid;
            place-items: center;
            font-weight: 700;
        }

        .mobile-toggle {
            display: none;
            border: none;
            background: transparent;
            font-size: 22px;
            cursor: pointer;
        }

        .hero {
            position: relative;
            min-height: 500px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
            overflow: hidden;
            background:
                linear-gradient(135deg, rgba(75, 46, 131, 0.8), rgba(255, 105, 180, 0.55)),
                url('https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            border-bottom-left-radius: 28px;
            border-bottom-right-radius: 28px;
        }

        .hero::before,
        .hero::after {
            content: "🦋";
            position: absolute;
            font-size: 70px;
            opacity: 0.18;
            animation: floatButterfly 6s ease-in-out infinite;
        }

        .hero::before {
            top: 40px;
            left: 8%;
        }

        .hero::after {
            bottom: 50px;
            right: 10%;
            animation-delay: 2s;
        }

        @keyframes floatButterfly {
            0%, 100% {
                transform: translateY(0px) rotate(0deg);
            }
            50% {
                transform: translateY(-18px) rotate(8deg);
            }
        }

        .hero h1 {
            font-family: Poppins, sans-serif;
            font-size: 48px;
            margin-bottom: 12px;
        }

        .hero p {
            max-width: 760px;
            margin: 0 auto 22px;
            font-size: 17px;
            opacity: 0.95;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 22px;
            border: none;
            border-radius: 999px;
            cursor: pointer;
            font-weight: 700;
            transition: 0.3s ease;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--secondary), var(--accent));
            color: white;
            box-shadow: 0 10px 25px rgba(255, 105, 180, 0.25);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.15);
            color: white;
            border: 1px solid rgba(255, 255, 255, 0.35);
        }

        .section {
            padding: 60px 0;
        }

        .title {
            text-align: center;
            margin-bottom: 24px;
        }

        .title h2 {
            font-family: Poppins, sans-serif;
            font-size: 32px;
            margin-bottom: 8px;
        }

        .muted {
            color: var(--muted);
        }

        .grid {
            display: grid;
            gap: 20px;
        }

        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--card);
            backdrop-filter: blur(10px);
            border-radius: var(--radius);
            padding: 22px 18px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: 0.3s ease;
            border: 1px solid rgba(124, 77, 255, 0.08);
        }

        .cat-card:hover {
            transform: translateY(-6px);
        }

        .cat-card .icon {
            width: 60px;
            height: 60px;
            margin: 0 auto 12px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: linear-gradient(135deg, #ffd6ec, #e9dcff);
            color: var(--accent);
            font-size: 24px;
        }

        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: 0.3s ease;
            display: flex;
            flex-direction: column;
            position: relative;
            border: 1px solid rgba(124, 77, 255, 0.08);
        }

        .product:hover {
            transform: translateY(-8px);
        }

        .product img {
            width: 100%;
            height: 220px;
            object-fit: cover;
        }

        .product-body {
            padding: 16px;
            flex: 1;
        }

        .product h5 {
            margin: 0 0 8px;
            font-size: 17px;
        }

        .price-row {
            display: flex;
            justify-content: space-between;
            gap: 10px;
            align-items: center;
            margin-top: 12px;
        }

        .price {
            font-weight: 800;
            font-size: 18px;
        }

        .old-price {
            font-size: 13px;
            text-decoration: line-through;
            color: var(--muted);
        }

        .rating {
            color: #ffb400;
            font-size: 13px;
        }

        .product-footer {
            padding: 0 16px 16px;
            display: flex;
            gap: 10px;
        }

        .add-btn {
            flex: 1;
            border: none;
            padding: 12px;
            border-radius: 12px;
            cursor: pointer;
            background: linear-gradient(135deg, var(--accent), var(--primary));
            color: white;
            font-weight: 700;
        }

        .wish-btn {
            border: 1px solid rgba(124, 77, 255, 0.15);
            background: white;
            padding: 12px;
            border-radius: 12px;
            cursor: pointer;
            color: var(--secondary);
        }

        .deal {
            display: flex;
            gap: 20px;
            align-items: center;
            background: linear-gradient(135deg, #fff0f7, #f4eeff);
            border-radius: 24px;
            overflow: hidden;
            box-shadow: var(--shadow);
        }

        .deal img {
            width: 50%;
            height: 340px;
            object-fit: cover;
        }

        .deal .content {
            padding: 32px;
        }

        .timer {
            display: flex;
            gap: 12px;
            margin: 22px 0;
        }

        .time-box {
            background: linear-gradient(135deg, var(--primary), var(--accent));
            color: white;
            padding: 12px 16px;
            border-radius: 14px;
            min-width: 80px;
            text-align: center;
        }

        .testimonials {
            display: flex;
            gap: 16px;
            overflow-x: auto;
            padding: 8px 4px;
        }

        .testimonial {
            min-width: 320px;
            background: var(--card);
            padding: 20px;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
        }

        .testimonial img {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            object-fit: cover;
        }

        .newsletter {
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            color: white;
            border-radius: 24px;
            padding: 36px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .newsletter::before,
        .newsletter::after {
            content: "🦋";
            position: absolute;
            font-size: 50px;
            opacity: 0.16;
        }

        .newsletter::before {
            left: 30px;
            top: 20px;
        }

        .newsletter::after {
            right: 30px;
            bottom: 20px;
        }

        .newsletter input {
            padding: 13px 16px;
            border-radius: 999px;
            border: none;
            width: 320px;
            max-width: 100%;
            outline: none;
        }

        footer {
            padding: 40px 0;
            margin-top: 30px;
            color: var(--muted);
        }

        @media (max-width: 1100px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media (max-width: 900px) {
            nav.main-nav {
                display: none;
            }

            .mobile-toggle {
                display: block;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .deal {
                flex-direction: column;
            }

            .deal img {
                width: 100%;
                height: 260px;
            }
        }

        @media (max-width: 600px) {
            .hero h1 {
                font-size: 32px;
            }

            .products,
            .categories {
                grid-template-columns: 1fr;
            }

            .search {
                min-width: auto;
                width: 100%;
            }

            .header-inner {
                flex-wrap: wrap;
            }
        }
    </style>
</head>

<body>
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:18px;">
                <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">
                    <i class="fas fa-butterfly"></i>
                    <span>ButterflyShop</span>
                </a>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#about"><i class="fas fa-info-circle"></i> About</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:14px;">
                <div class="search">
                    <input type="search" id="searchInput" placeholder="Search beautiful products..." />
                    <button class="icon-btn" id="searchBtn"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <a class="icon-btn" href="#"><i class="far fa-user"></i></a>
                    <a class="icon-btn" href="#"><i class="far fa-heart"></i></a>
                    <a class="cart" href="#" id="cartBtn">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <div id="mobileMenu" style="display:none; background:white;">
            <div class="container" style="padding:12px 0;">
                <nav>
                    <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:8px;">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Categories</a></li>
                        <li><a href="#">Trending</a></li>
                        <li><a href="#deals">Deals</a></li>
                        <li><a href="#about">About</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container">
                <h1>Fly Into Elegant Shopping</h1>
                <p>Explore premium fashion, gadgets, and accessories in a dreamy butterfly-inspired shopping experience.</p>
                <div>
                    <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                </div>
            </div>
        </section>

        <section class="section container">
            <div class="title">
                <h2>Shop by Category</h2>
                <p class="muted">Soft, stylish, and curated for modern shoppers.</p>
            </div>
            <div class="grid categories" id="categoriesGrid"></div>
        </section>

        <section class="section container">
            <div class="title">
                <h2>Trending Products</h2>
                <p class="muted">Handpicked favorites flying off the shelves.</p>
            </div>
            <div class="grid products" id="productsGrid"></div>
        </section>

        <section id="deals" class="section container">
            <div class="title">
                <h2>Flash Sale</h2>
                <p class="muted">Flutter in fast before these offers disappear.</p>
            </div>

            <div class="deal">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="Deal product">
                <div class="content">
                    <h3>MacBook Air M2</h3>
                    <p class="muted">Lightweight, elegant, and powerful for your everyday creativity.</p>

                    <div class="timer">
                        <div class="time-box">
                            <div id="dealDays">0</div>
                            <div style="font-size:12px;">Days</div>
                        </div>
                        <div class="time-box">
                            <div id="dealHours">00</div>
                            <div style="font-size:12px;">Hours</div>
                        </div>
                        <div class="time-box">
                            <div id="dealMinutes">00</div>
                            <div style="font-size:12px;">Minutes</div>
                        </div>
                        <div class="time-box">
                            <div id="dealSeconds">00</div>
                            <div style="font-size:12px;">Seconds</div>
                        </div>
                    </div>

                    <div style="display:flex;align-items:center;gap:12px;">
                        <div class="price">$999 <span class="old-price">$1,199</span></div>
                        <div style="background:#ff4f81;color:white;padding:6px 10px;border-radius:10px;font-weight:700">-17%</div>
                    </div>

                    <p style="margin-top:10px;">Only <strong>12</strong> items left at this price.</p>
                    <button class="btn btn-primary" id="buyDeal">Buy Now</button>
                </div>
            </div>
        </section>

        <section class="section container">
            <div class="title">
                <h2>What our customers say</h2>
                <p class="muted">Loved by shoppers everywhere.</p>
            </div>

            <div class="testimonials">
                <div class="testimonial">
                    <div class="rating">★★★★★</div>
                    <p>"The butterfly design feels so premium and the shopping experience is beautiful."</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar">
                        <div>
                            <div style="font-weight:700">Ava Martin</div>
                            <div class="muted" style="font-size:13px">Verified buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial">
                    <div class="rating">★★★★☆</div>
                    <p>"Very clean UI, lovely colors, and smooth shopping flow."</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar">
                        <div>
                            <div style="font-weight:700">Michael Lee</div>
                            <div class="muted" style="font-size:13px">Frequent buyer</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="section container">
            <div class="newsletter">
                <h3>Stay in the loop</h3>
                <p>Subscribe for exclusive offers and dreamy new arrivals.</p>
                <form id="newsletterForm" style="display:flex;justify-content:center;gap:8px;flex-wrap:wrap;" onsubmit="return false;">
                    <input id="newsletterEmail" type="email" placeholder="Enter your email" required>
                    <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top:10px;font-size:14px;display:none"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex;flex-wrap:wrap;gap:28px;align-items:flex-start;justify-content:space-between">
            <div style="max-width:360px">
                <div style="font-weight:800;font-size:20px;color:var(--primary)">ButterflyShop</div>
                <p class="muted" style="margin-top:8px">A graceful e-commerce demo with a butterfly-inspired modern UI.</p>
            </div>

            <div style="display:flex;gap:40px;flex:1;justify-content:flex-end;flex-wrap:wrap">
                <div>
                    <div style="font-weight:700;margin-bottom:8px">Company</div>
                    <div class="muted" style="line-height:1.8">About<br>Careers<br>Press</div>
                </div>
                <div>
                    <div style="font-weight:700;margin-bottom:8px">Support</div>
                    <div class="muted" style="line-height:1.8">Help Center<br>Shipping & Returns<br>Contact</div>
                </div>
            </div>
        </div>

        <div style="text-align:center;margin-top:22px;font-size:13px">© <span id="year"></span> ButterflyShop. All rights reserved.</div>
    </footer>

    <script>
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
            { id: 'clothing', name: 'Clothing', icon: 'fa-shirt' },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-gem' }
        ];

        const PRODUCTS = [
            {
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'footwear'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            },
            {
                id: 6,
                title: 'Luxury Perfume',
                price: 120,
                rating: 5,
                reviews: 189,
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Travel Backpack',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 8,
                title: 'Sony WH-1000XM5',
                price: 399,
                rating: 5,
                reviews: 156,
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            }
        ];

        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');

        let cartCount = 0;

        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            }[s]));
        }

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="muted" style="font-size:13px;margin-top:6px">Explore ${cat.name}</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    window.scrollTo({ top: productsGrid.offsetTop - 80, behavior: 'smooth' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                el.innerHTML = `
                    ${p.badge ? `<div style="position:absolute;top:14px;left:14px;z-index:2;"><span style="background:${p.badge.startsWith('-') ? '#ff4f81' : '#28a745'};color:white;padding:6px 10px;border-radius:999px;font-weight:700;font-size:12px;">${p.badge}</span></div>` : ''}
                    <img src="${p.img}" alt="${escapeHtml(p.title)}">
                    <div class="product-body">
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="muted">${p.category}</div>
                        <div class="price-row">
                            <div>
                                <div class="price">$${p.price.toLocaleString()}</div>
                                ${p.oldPrice ? `<div class="old-price">$${p.oldPrice.toLocaleString()}</div>` : ''}
                            </div>
                            <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="font-size:12px;color:#888;">(${p.reviews})</span></div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                        <button class="wish-btn"><i class="far fa-heart"></i></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            document.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', () => {
                    cartCount++;
                    cartCountEl.textContent = cartCount;
                    const original = btn.innerHTML;
                    btn.innerHTML = 'Added ✓';
                    btn.disabled = true;
                    setTimeout(() => {
                        btn.innerHTML = original;
                        btn.disabled = false;
                    }, 1000);
                });
            });
        }

        function filterProducts(query) {
            const q = String(query || '').toLowerCase().trim();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', e => {
            if (e.key === 'Enter') filterProducts(searchInput.value);
        });

        mobileToggle.addEventListener('click', () => {
            mobileMenu.style.display = mobileMenu.style.display === 'block' ? 'none' : 'block';
        });

        document.getElementById('newsletterForm').addEventListener('submit', e => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');

            if (!email || !email.includes('@')) {
                msg.style.display = 'block';
                msg.style.color = '#ffe3e3';
                msg.textContent = 'Please enter a valid email address.';
                return;
            }

            msg.style.display = 'block';
            msg.style.color = '#ffffff';
            msg.textContent = 'Thanks! You are subscribed.';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => {
                msg.style.display = 'none';
            }, 2500);
        });

        document.getElementById('shopNow').addEventListener('click', () => {
            window.scrollTo({ top: productsGrid.offsetTop - 80, behavior: 'smooth' });
        });

        document.getElementById('exploreDeals').addEventListener('click', () => {
            window.location.hash = '#deals';
        });

        document.getElementById('buyDeal').addEventListener('click', () => {
            cartCount++;
            cartCountEl.textContent = cartCount;
            alert('Deal added to cart.');
        });

        (function setupDealTimer() {
            const target = new Date(new Date().getTime() + (24 * 60 + 36) * 60 * 1000);
            function tick() {
                const diff = target - new Date();
                const days = Math.max(0, Math.floor(diff / (24 * 3600 * 1000)));
                const hours = Math.max(0, Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000)));
                const mins = Math.max(0, Math.floor((diff % (3600 * 1000)) / (60 * 1000)));
                const secs = Math.max(0, Math.floor((diff % (60 * 1000)) / 1000));

                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        (function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            document.getElementById('year').textContent = new Date().getFullYear();
        })();
    </script>
</body>

</html>
