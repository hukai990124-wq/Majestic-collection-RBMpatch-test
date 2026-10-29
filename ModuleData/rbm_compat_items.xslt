<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes" />

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" />
    </xsl:copy>
  </xsl:template>

  <!-- RBM-scaled armor and shield protection. All other properties are preserved. -->
  <xsl:template match="Item/ItemComponent/Armor/@head_armor | Item/ItemComponent/Armor/@body_armor | Item/ItemComponent/Armor/@leg_armor | Item/ItemComponent/Armor/@arm_armor | Item/ItemComponent/Weapon/@body_armor | Item/ItemComponent/Weapon/@hit_points">
    <xsl:variable name="key" select="concat(../../../@id, '/', name())" />
    <xsl:attribute name="{name()}">
      <xsl:choose>
        <xsl:when test="$key='mc_royal_conqueror_helmet/head_armor'">120</xsl:when>
        <xsl:when test="$key='mc_royal_conqueror_cuirass/head_armor'">25</xsl:when>
        <xsl:when test="$key='mc_royal_conqueror_cuirass/body_armor'">110</xsl:when>
        <xsl:when test="$key='mc_royal_conqueror_cuirass/leg_armor'">35</xsl:when>
        <xsl:when test="$key='mc_royal_conqueror_gauntlets/arm_armor'">45</xsl:when>
        <xsl:when test="$key='mc_royal_conqueror_boots/leg_armor'">46</xsl:when>
        <xsl:when test="$key='mc_gilded_acanthus_gauntlets/arm_armor'">55</xsl:when>
        <xsl:when test="$key='mc_gilded_acanthus_plate/head_armor'">30</xsl:when>
        <xsl:when test="$key='mc_gilded_acanthus_plate/body_armor'">120</xsl:when>
        <xsl:when test="$key='mc_gilded_acanthus_plate/leg_armor'">45</xsl:when>
        <xsl:when test="$key='mc_gilded_acanthus_leg_armour/leg_armor'">55</xsl:when>
        <xsl:when test="$key='mc_gilded_acanthus_shoulder_armour/body_armor'">40</xsl:when>
        <xsl:when test="$key='mc_gilded_acanthus_helmet/head_armor'">130</xsl:when>
        <xsl:when test="$key='mc_vaegir_guard_commander_helmet/head_armor'">125</xsl:when>
        <xsl:when test="$key='mc_vaegir_captain_helmet/head_armor'">125</xsl:when>
        <xsl:when test="$key='mc_vaegir_captain_shoulder/body_armor'">40</xsl:when>
        <xsl:when test="$key='mc_vaegir_commander_armor/body_armor'">110</xsl:when>
        <xsl:when test="$key='mc_vaegir_commander_armor/leg_armor'">50</xsl:when>
        <xsl:when test="$key='mc_vaegir_commander_armor/arm_armor'">50</xsl:when>
        <xsl:when test="$key='mc_vaegir_captain_hand_armor/arm_armor'">45</xsl:when>
        <xsl:when test="$key='mc_vaegir_captain_boots/leg_armor'">50</xsl:when>
        <xsl:when test="$key='mc_royal_conqueror_fleece/body_armor'">1</xsl:when>
        <xsl:when test="$key='mc_maxmilian_armor/head_armor'">30</xsl:when>
        <xsl:when test="$key='mc_maxmilian_armor/body_armor'">120</xsl:when>
        <xsl:when test="$key='mc_maxmilian_armor/leg_armor'">45</xsl:when>
        <xsl:when test="$key='mc_maxmilian_gauntlets/arm_armor'">55</xsl:when>
        <xsl:when test="$key='mc_maxmilian_shoulders/body_armor'">40</xsl:when>
        <xsl:when test="$key='mc_maximilian_heavy_boots/leg_armor'">55</xsl:when>
        <xsl:when test="$key='mc_maximilian_jousting_helmet/head_armor'">130</xsl:when>
        <xsl:when test="$key='mc_maximilian_heavy_helmet/head_armor'">130</xsl:when>
        <xsl:when test="$key='mc_sol_boots/leg_armor'">55</xsl:when>
        <xsl:when test="$key='mc_sol_helmet/head_armor'">130</xsl:when>
        <xsl:when test="$key='mc_royal_conqueror_shield/body_armor'">15</xsl:when>
        <xsl:when test="$key='mc_royal_conqueror_shield/hit_points'">2000</xsl:when>
        <xsl:when test="$key='mc_gilded_acanthus_shield/body_armor'">18</xsl:when>
        <xsl:when test="$key='mc_gilded_acanthus_shield/hit_points'">2200</xsl:when>
        <xsl:when test="$key='mc_vaegir_captain_shield/body_armor'">6</xsl:when>
        <xsl:when test="$key='mc_vaegir_captain_shield/hit_points'">900</xsl:when>
        <!-- 2026-10-25: current base-module coverage; see BALANCE_UPDATES.md. -->
        <xsl:when test="$key='mc_peaky_hat/head_armor'">6</xsl:when>
        <xsl:when test="$key='mc_peaky_cloth/head_armor'">0</xsl:when>
        <xsl:when test="$key='mc_peaky_cloth/body_armor'">6</xsl:when>
        <xsl:when test="$key='mc_peaky_cloth/leg_armor'">5</xsl:when>
        <xsl:when test="$key='mc_peaky_cloth/arm_armor'">0</xsl:when>
        <xsl:when test="$key='mc_peaky_shoes/leg_armor'">19</xsl:when>
        <xsl:when test="$key='mc_peaky_gloves/arm_armor'">24</xsl:when>
        <xsl:when test="$key='mc_landsknecht_doppelsoldner_helmet/head_armor'">120</xsl:when>
        <xsl:when test="$key='mc_landsknecht_hat/head_armor'">6</xsl:when>
        <xsl:when test="$key='mc_doppelsoldner_shoes/leg_armor'">20</xsl:when>
        <xsl:when test="$key='mc_landsknecht_doppelsoldner_lite_plate/head_armor'">20</xsl:when>
        <xsl:when test="$key='mc_landsknecht_doppelsoldner_lite_plate/body_armor'">105</xsl:when>
        <xsl:when test="$key='mc_landsknecht_doppelsoldner_lite_plate/leg_armor'">35</xsl:when>
        <xsl:when test="$key='mc_landsknecht_cloth/head_armor'">0</xsl:when>
        <xsl:when test="$key='mc_landsknecht_cloth/body_armor'">14</xsl:when>
        <xsl:when test="$key='mc_landsknecht_cloth/leg_armor'">14</xsl:when>
        <xsl:when test="$key='mc_landsknecht_cuirass/head_armor'">20</xsl:when>
        <xsl:when test="$key='mc_landsknecht_cuirass/body_armor'">105</xsl:when>
        <xsl:when test="$key='mc_landsknecht_cuirass/leg_armor'">35</xsl:when>
        <xsl:when test="$key='mc_landsknecht_schuhe/leg_armor'">22</xsl:when>
        <xsl:when test="$key='mc_landsknecht_doppelsoldner_gloves/arm_armor'">24</xsl:when>
        <xsl:when test="$key='mc_landsknecht_doppelsoldner_cape/head_armor'">15</xsl:when>
        <xsl:when test="$key='mc_landsknecht_doppelsoldner_cape/body_armor'">33</xsl:when>
        <xsl:when test="$key='mc_gilded_acanthus_helmet_dragon/head_armor'">130</xsl:when>
        <xsl:when test="$key='mc_horse_plate_armor/body_armor'">47</xsl:when>
        <xsl:when test="$key='mc_horse_plate_armor/head_armor'">90</xsl:when>
        <xsl:when test="$key='mc_horse_plate_armor/arm_armor'">57</xsl:when>
        <xsl:when test="$key='mc_horse_plate_armor/leg_armor'">47</xsl:when>
        <xsl:when test="$key='mc_horse_plate_armor_light/body_armor'">47</xsl:when>
        <xsl:when test="$key='mc_horse_plate_armor_light/head_armor'">90</xsl:when>
        <xsl:when test="$key='mc_horse_plate_armor_light/arm_armor'">57</xsl:when>
        <xsl:when test="$key='mc_horse_plate_armor_light/leg_armor'">5</xsl:when>
        <xsl:when test="$key='maximilian_boucheshield/body_armor'">6</xsl:when>
        <xsl:when test="$key='maximilian_boucheshield/hit_points'">710</xsl:when>
        <!-- 2026-10-30: Tercio Elite / Tercio Pikeman coverage.
             Every value mirrors an existing rule whose base-module value is identical,
             so no new balance judgement is introduced:
               helmet 55            -> mc_royal_conqueror_helmet           (55 -> 120)
               plate 15/60/15       -> mc_royal_conqueror_cuirass          (15/60/12 -> 25/110/35)
               pikeman 10/50/15     -> mc_landsknecht_doppelsoldner_lite_plate (10/60/15 -> 20/105/35)
               shoulders 25         -> gilded acanthus / maxmilian / vaegir shoulder line (25 -> 40)
               boots 25             -> mc_royal_conqueror_boots           (25 -> 46)
               gauntlets 25         -> mc_royal_conqueror_gauntlets       (25 -> 45)
             mc_tercioelite_helmet is declared twice in the base module; this single
             rule applies to both, since the key matches on item id. -->
        <xsl:when test="$key='mc_tercioelite_helmet/head_armor'">120</xsl:when>
        <xsl:when test="$key='mc_tercioelite_plate/head_armor'">25</xsl:when>
        <xsl:when test="$key='mc_tercioelite_plate/body_armor'">110</xsl:when>
        <xsl:when test="$key='mc_tercioelite_plate/leg_armor'">35</xsl:when>
        <xsl:when test="$key='mc_tercioelite_shoulders/body_armor'">40</xsl:when>
        <xsl:when test="$key='mc_tercioelite_boots/leg_armor'">46</xsl:when>
        <xsl:when test="$key='mc_tercioelite_gauntlets/arm_armor'">45</xsl:when>
        <xsl:when test="$key='mc_terciopikeman_cuirass/head_armor'">20</xsl:when>
        <xsl:when test="$key='mc_terciopikeman_cuirass/body_armor'">105</xsl:when>
        <xsl:when test="$key='mc_terciopikeman_cuirass/leg_armor'">35</xsl:when>
        <xsl:otherwise><xsl:value-of select="." /></xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
  </xsl:template>
  <!-- RBM horse armor uses regional protection absent from the base horse items. -->
  <xsl:template match="Item[@id='mc_horse_plate_armor']/ItemComponent/Armor">
    <xsl:copy>
      <xsl:apply-templates select="@*" />
      <xsl:if test="not(@head_armor)">
        <xsl:attribute name="head_armor">90</xsl:attribute>
      </xsl:if>
      <xsl:if test="not(@arm_armor)">
        <xsl:attribute name="arm_armor">57</xsl:attribute>
      </xsl:if>
      <xsl:if test="not(@leg_armor)">
        <xsl:attribute name="leg_armor">47</xsl:attribute>
      </xsl:if>
      <xsl:apply-templates select="node()" />
    </xsl:copy>
  </xsl:template>
  <xsl:template match="Item[@id='mc_horse_plate_armor_light']/ItemComponent/Armor">
    <xsl:copy>
      <xsl:apply-templates select="@*" />
      <xsl:if test="not(@head_armor)">
        <xsl:attribute name="head_armor">90</xsl:attribute>
      </xsl:if>
      <xsl:if test="not(@arm_armor)">
        <xsl:attribute name="arm_armor">57</xsl:attribute>
      </xsl:if>
      <xsl:if test="not(@leg_armor)">
        <xsl:attribute name="leg_armor">5</xsl:attribute>
      </xsl:if>
      <xsl:apply-templates select="node()" />
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
