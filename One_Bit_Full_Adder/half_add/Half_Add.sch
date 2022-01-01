<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="virtex4" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="B" />
        <signal name="SO" />
        <signal name="CO" />
        <signal name="XLXN_5" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Output" name="SO" />
        <port polarity="Output" name="CO" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="CO" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="SO" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1872" y="1680" name="XLXI_2" orien="R0" />
        <instance x="1760" y="1056" name="XLXI_1" orien="R0" />
        <branch name="A">
            <wire x2="1744" y1="832" y2="832" x1="1520" />
            <wire x2="1744" y1="832" y2="928" x1="1744" />
            <wire x2="1760" y1="928" y2="928" x1="1744" />
            <wire x2="1520" y1="832" y2="1552" x1="1520" />
            <wire x2="1872" y1="1552" y2="1552" x1="1520" />
            <wire x2="1744" y1="928" y2="928" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1728" y="928" name="A" orien="R180" />
        <branch name="B">
            <wire x2="1744" y1="992" y2="992" x1="1728" />
            <wire x2="1760" y1="992" y2="992" x1="1744" />
            <wire x2="1744" y1="992" y2="1616" x1="1744" />
            <wire x2="1872" y1="1616" y2="1616" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="1728" y="992" name="B" orien="R180" />
        <branch name="SO">
            <wire x2="2160" y1="1584" y2="1584" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1584" name="SO" orien="R0" />
        <branch name="CO">
            <wire x2="2048" y1="960" y2="960" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="960" name="CO" orien="R0" />
    </sheet>
</drawing>