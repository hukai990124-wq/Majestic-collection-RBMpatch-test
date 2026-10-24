<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes" />

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" />
    </xsl:copy>
  </xsl:template>

  <!-- RBM weapon-piece damage factors use a much lower scale than the base mod. -->
  <xsl:template match="CraftingPiece/BladeData/Thrust/@damage_factor | CraftingPiece/BladeData/Swing/@damage_factor">
    <xsl:variable name="key" select="concat(../../../@id, '/', name(..))" />
    <xsl:attribute name="damage_factor">
      <xsl:choose>
        <xsl:when test="$key='conquistador_blade/Thrust'">1.05</xsl:when>
        <xsl:when test="$key='conquistador_blade/Swing'">1.00</xsl:when>
        <xsl:when test="$key='acanthus_jousting_point/Thrust'">1.30</xsl:when>
        <xsl:when test="$key='joyeuse_blade/Thrust'">1.05</xsl:when>
        <xsl:when test="$key='joyeuse_blade/Swing'">1.00</xsl:when>
        <xsl:when test="$key='klingenmeister_blade/Thrust'">1.10</xsl:when>
        <xsl:when test="$key='klingenmeister_blade/Swing'">1.35</xsl:when>
        <xsl:when test="$key='maximilian_jousting_lance_blade/Thrust'">1.30</xsl:when>
        <xsl:when test="$key='royal_partisan_blade/Thrust'">1.20</xsl:when>
        <xsl:when test="$key='royal_partisan_blade/Swing'">0.85</xsl:when>
        <xsl:when test="$key='flower_knetch_blade/Thrust'">1.10</xsl:when>
        <xsl:when test="$key='flower_knetch_blade/Swing'">1.35</xsl:when>
        <xsl:when test="$key='vaegir_ritual_blade/Swing'">1.25</xsl:when>
        <!-- 2026-10-25: current base-module coverage; see BALANCE_UPDATES.md. -->
        <xsl:when test="$key='light_jousting_point/Thrust'">1.30</xsl:when>
        <xsl:when test="$key='maximilian_rondel_blade/Thrust'">1.00</xsl:when>
        <xsl:when test="$key='maximilian_rondel_blade/Swing'">0.90</xsl:when>
        <xsl:when test="$key='gilded_crescent_blade/Thrust'">1.00</xsl:when>
        <xsl:when test="$key='gilded_crescent_blade/Swing'">1.20</xsl:when>
        <xsl:when test="$key='side_blade/Thrust'">1.05</xsl:when>
        <xsl:when test="$key='side_blade/Swing'">1.00</xsl:when>
        <xsl:when test="$key='decorated_mace_blade/Swing'">1.30</xsl:when>
        <xsl:when test="$key='gilded_dragon_sword_blade/Thrust'">1.10</xsl:when>
        <xsl:when test="$key='gilded_dragon_sword_blade/Swing'">1.35</xsl:when>
        <xsl:otherwise><xsl:value-of select="." /></xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
  </xsl:template>
</xsl:stylesheet>
