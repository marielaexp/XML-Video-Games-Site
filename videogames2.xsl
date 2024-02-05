<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>2020 Releases</title>
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
          }

          table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
          }

          th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
            vertical-align: top;
          }

          th {
            background-color: #333;
            color: white;
          }

          .image {
            max-width: 100px;
            max-height: 150px;
            margin-right: 10px;
          }

          td p {
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
          }

        </style>
      </head>
      <body>
        <header>
          <h1>2020 Releases</h1>
        </header>
        <nav>
          <a href="videogames.xml">Home</a>
          <a href="videogames2.xml">List</a>
          <a href="videogames3.xml">Top rated</a>
          <a href="videogames4.xml">MathML</a>
                    <a href="videogames5.php">simpleXML/PHP</a>
        </nav>
        <div class="container">
          <table>
            <thead>
              <tr>
                <th>Image</th>
                <th>Title</th>
                <th>Genre</th>
                <th>Release Date</th>
              </tr>
            </thead>
            <tbody>
              <xsl:apply-templates select="games/game[release_date/year = '2020']"/>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="game">
    <tr>
      <td>
        <img class="image" src="{image}" alt="{title}" width="100" height="150"/>
      </td>
      <td>
        <p><xsl:value-of select="title"/></p>
      </td>
      <td>
        <p><xsl:value-of select="genres/genre"/></p>
      </td>
      <td>
        <p><xsl:value-of select="concat(release_date/day, '/', release_date/month, '/', release_date/year)"/></p>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
