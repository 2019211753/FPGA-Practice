<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="virtex4" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="CIN" />
        <signal name="B" />
        <signal name="A" />
        <signal name="COUT" />
        <signal name="SUM" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <port polarity="Input" name="CIN" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="COUT" />
        <port polarity="Output" name="SUM" />
        <blockdef name="Half_Add">
            <timestamp>2021-10-8T10:59:7</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="Half_Add" name="XLXI_1">
            <blockpin signalname="A" name="A" />
            <blockpin signalname="B" name="B" />
            <blockpin signalname="XLXN_7" name="CO" />
            <blockpin signalname="XLXN_1" name="SO" />
        </block>
        <block symbolname="Half_Add" name="XLXI_2">
            <blockpin signalname="CIN" name="A" />
            <blockpin signalname="XLXN_1" name="B" />
            <blockpin signalname="XLXN_8" name="CO" />
            <blockpin signalname="SUM" name="SO" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="COUT" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2512" y="1152" name="XLXI_3" orien="R0" />
        <instance x="1328" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1904" y="1536" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1808" y1="1136" y2="1136" x1="1712" />
            <wire x2="1808" y1="1136" y2="1504" x1="1808" />
            <wire x2="1904" y1="1504" y2="1504" x1="1808" />
        </branch>
        <branch name="CIN">
            <wire x2="1904" y1="1440" y2="1440" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1872" y="1440" name="CIN" orien="R180" />
        <branch name="B">
            <wire x2="1328" y1="1136" y2="1136" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1296" y="1136" name="B" orien="R180" />
        <branch name="A">
            <wire x2="1328" y1="1072" y2="1072" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1296" y="1072" name="A" orien="R180" />
        <branch name="COUT">
            <wire x2="2800" y1="1056" y2="1056" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1056" name="COUT" orien="R0" />
        <branch name="SUM">
            <wire x2="2320" y1="1504" y2="1504" x1="2288" />
        </branch>
        <iomarker fontsize="28" x="2320" y="1504" name="SUM" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="2112" y1="1072" y2="1072" x1="1712" />
            <wire x2="2112" y1="1024" y2="1072" x1="2112" />
            <wire x2="2512" y1="1024" y2="1024" x1="2112" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2400" y1="1440" y2="1440" x1="2288" />
            <wire x2="2400" y1="1088" y2="1440" x1="2400" />
            <wire x2="2512" y1="1088" y2="1088" x1="2400" />
        </branch>
    </sheet>
</drawing>