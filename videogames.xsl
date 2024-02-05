<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Video Games</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
          }

          header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
          }

          nav {
            background-color: #444;
            padding: 10px;
            text-align: center;
          }

          nav a {
            color: white;
            text-decoration: none;
            margin-right: 20px;
          }

          .container {
            max-width: 800px;
            margin: 0 auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
          }

          .game {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px;
            width: calc(33.33% - 20px); /* Three items in a row */
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
            transition: box-shadow 0.3s ease; 
            flex: 1 1 calc(30% - 20px);
          }

          .game:hover {
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3); 
          }

          .title {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
          }

          .genres {
            margin-bottom: 5px;
            color: #555;
          }

          .rating {
            margin-bottom: 5px;
            color: #777;
          }

          .release-date {
            margin-bottom: 5px;
            color: #888;
          }

          .platforms {
            margin-bottom: 5px;
            color: #999;
          }

          .platform {
            margin-right: 5px;

          }

        </style>
      </head>
      <body>
        <header>
          <h1>Video Games</h1>
        </header>
        <nav>
          <a href="videogames.xml">Home</a>
          <a href="videogames2.xml">List</a>
          <a href="videogames3.xml">Top rated</a>
          <a href="videogames4.xml">MathML</a>
          <a href="videogames5.php">simpleXML/PHP</a>
        </nav>
        <div class="container">
          <xsl:apply-templates select="games/game"/>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="game">
    <div class="game">
      <div class="title">
        <xsl:value-of select="title"/>
      </div>
      <div class="genres">
        Genres: <xsl:apply-templates select="genres/genre" mode="genreList"/>
      </div>
      <div class="rating">
        Rating: <xsl:value-of select="rating"/>
      </div>
      <div class="release-date">
        Release Date: <xsl:apply-templates select="release_date"/>
      </div>
      <div class="platforms">
        Platforms: <xsl:apply-templates select="platforms/platform[@status='Available']" mode="platformList"/>
      </div>
      <div class="image">
        <img src="{image}" alt="{title}" style="max-width: 100%;
            height: 350px; 
            object-fit: cover; 
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);"/>
      </div>
    </div>
  </xsl:template>

<xsl:template match="release_date">
  <xsl:value-of select="concat(day, '/', month, '/', year)"/>
</xsl:template>

  <xsl:template match="genres/genre" mode="genreList">
    <xsl:if test="position() &gt; 1">, </xsl:if>
    <span class="{local-name()}">
      <xsl:value-of select="."/>
    </span>
  </xsl:template>

  <xsl:template match="platforms/platform" mode="platformList">
    <xsl:if test="position() &gt; 1">, </xsl:if>
    <span class="{local-name()}">
      <xsl:value-of select="."/>
    </span>
  </xsl:template>

  <xsl:template match="genres/genre | platforms/platform">
    <span class="{local-name()}">
      <xsl:value-of select="."/>
    </span>
  </xsl:template>

</xsl:stylesheet>
