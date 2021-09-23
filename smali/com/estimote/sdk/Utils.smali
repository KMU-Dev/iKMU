.class public Lcom/estimote/sdk/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/estimote/sdk/Utils$Proximity;,
        Lcom/estimote/sdk/Utils$RestartCompletedListener;
    }
.end annotation


# static fields
.field private static final MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beaconFromLeScan(Landroid/bluetooth/BluetoothDevice;I[B)Lcom/estimote/sdk/Beacon;
    .locals 15

    move-object/from16 v0, p2

    .line 40
    invoke-static/range {p2 .. p2}, Lcom/estimote/sdk/internal/HashCode;->fromBytes([B)Lcom/estimote/sdk/internal/HashCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estimote/sdk/internal/HashCode;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 42
    :goto_0
    array-length v4, v0

    const/4 v5, 0x0

    if-ge v3, v4, :cond_4

    .line 43
    aget-byte v4, v0, v3

    invoke-static {v4}, Lcom/estimote/sdk/Utils;->unsignedByteToInt(B)I

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v6, v3, 0x1

    .line 44
    array-length v7, v0

    if-lt v6, v7, :cond_0

    goto/16 :goto_1

    .line 49
    :cond_0
    aget-byte v6, v0, v6

    invoke-static {v6}, Lcom/estimote/sdk/Utils;->unsignedByteToInt(B)I

    move-result v6

    const/16 v7, 0xff

    const/4 v8, 0x1

    if-eq v6, v7, :cond_1

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    goto :goto_0

    :cond_1
    const/16 v6, 0x1a

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v3, 0x2

    .line 52
    aget-byte v4, v0, v4

    invoke-static {v4}, Lcom/estimote/sdk/Utils;->unsignedByteToInt(B)I

    move-result v4

    const/16 v7, 0x4c

    if-ne v4, v7, :cond_2

    add-int/lit8 v4, v3, 0x3

    aget-byte v4, v0, v4

    invoke-static {v4}, Lcom/estimote/sdk/Utils;->unsignedByteToInt(B)I

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v4, v3, 0x4

    aget-byte v4, v0, v4

    invoke-static {v4}, Lcom/estimote/sdk/Utils;->unsignedByteToInt(B)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    add-int/lit8 v4, v3, 0x5

    aget-byte v4, v0, v4

    invoke-static {v4}, Lcom/estimote/sdk/Utils;->unsignedByteToInt(B)I

    move-result v4

    const/16 v9, 0x15

    if-ne v4, v9, :cond_2

    const-string v4, "%s-%s-%s-%s-%s"

    const/4 v5, 0x5

    .line 57
    new-array v5, v5, [Ljava/lang/Object;

    const/16 v9, 0x12

    invoke-virtual {v1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v2

    const/16 v2, 0x1e

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    const/16 v8, 0x22

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    const/16 v2, 0x26

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v5, v8

    const/16 v7, 0x32

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v1, v3, 0x16

    .line 64
    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/estimote/sdk/Utils;->unsignedByteToInt(B)I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    add-int/lit8 v2, v3, 0x17

    aget-byte v2, v0, v2

    invoke-static {v2}, Lcom/estimote/sdk/Utils;->unsignedByteToInt(B)I

    move-result v2

    add-int v11, v1, v2

    add-int/lit8 v1, v3, 0x18

    .line 65
    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/estimote/sdk/Utils;->unsignedByteToInt(B)I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    add-int/lit8 v2, v3, 0x19

    aget-byte v2, v0, v2

    invoke-static {v2}, Lcom/estimote/sdk/Utils;->unsignedByteToInt(B)I

    move-result v2

    add-int v12, v1, v2

    add-int/2addr v3, v6

    .line 66
    aget-byte v13, v0, v3

    .line 68
    new-instance v0, Lcom/estimote/sdk/Beacon;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    move-object v7, v0

    move/from16 v14, p1

    invoke-direct/range {v7 .. v14}, Lcom/estimote/sdk/Beacon;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    return-object v0

    :cond_2
    return-object v5

    :cond_3
    return-object v5

    :cond_4
    :goto_1
    return-object v5
.end method

.method public static computeAccuracy(Lcom/estimote/sdk/Beacon;)D
    .locals 10

    .line 114
    invoke-virtual {p0}, Lcom/estimote/sdk/Beacon;->getRssi()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/estimote/sdk/Beacon;->getRssi()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/estimote/sdk/Beacon;->getMeasuredPower()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x3feeb851eb851eb8L    # 0.96

    .line 119
    invoke-virtual {p0}, Lcom/estimote/sdk/Beacon;->getRssi()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-double v4, p0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    rem-double/2addr v4, v6

    const-wide v6, 0x4062c00000000000L    # 150.0

    div-double/2addr v4, v6

    add-double/2addr v4, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_1

    const-wide v2, 0x4023f5c28f5c28f6L    # 9.98

    .line 122
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v4

    return-wide v0

    :cond_1
    const-wide v2, 0x3fba5e353f7ced91L    # 0.103

    const-wide v6, 0x3feccaff6d330942L    # 0.89978

    const-wide v8, 0x401ed70a3d70a3d7L    # 7.71

    .line 124
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v6

    add-double/2addr v0, v2

    mul-double v0, v0, v4

    return-wide v0
.end method

.method public static computeProximity(Lcom/estimote/sdk/Beacon;)Lcom/estimote/sdk/Utils$Proximity;
    .locals 2

    .line 165
    invoke-static {p0}, Lcom/estimote/sdk/Utils;->computeAccuracy(Lcom/estimote/sdk/Beacon;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estimote/sdk/Utils;->proximityFromAccuracy(D)Lcom/estimote/sdk/Utils$Proximity;

    move-result-object p0

    return-object p0
.end method

.method public static isBeaconInRegion(Lcom/estimote/sdk/Beacon;Lcom/estimote/sdk/Region;)Z
    .locals 2

    .line 104
    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getProximityUUID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estimote/sdk/Beacon;->getProximityUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getProximityUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getMajor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estimote/sdk/Beacon;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getMajor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getMinor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estimote/sdk/Beacon;->getMinor()I

    move-result p0

    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getMinor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static normalize16BitUnsignedInt(I)I
    .locals 1

    const v0, 0xffff

    .line 189
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static normalizeProximityUUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "-"

    const-string v1, ""

    .line 88
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "Proximity UUID must be 32 characters without dashes"

    invoke-static {v0, v4}, Lcom/estimote/sdk/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string v0, "%s-%s-%s-%s-%s"

    const/4 v4, 0x5

    .line 91
    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x8

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const/16 v3, 0xc

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const/16 v5, 0x10

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x3

    const/16 v3, 0x14

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 0

    .line 176
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static proximityFromAccuracy(D)Lcom/estimote/sdk/Utils$Proximity;
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    .line 153
    sget-object p0, Lcom/estimote/sdk/Utils$Proximity;->UNKNOWN:Lcom/estimote/sdk/Utils$Proximity;

    return-object p0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    .line 156
    sget-object p0, Lcom/estimote/sdk/Utils$Proximity;->IMMEDIATE:Lcom/estimote/sdk/Utils$Proximity;

    return-object p0

    :cond_1
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_2

    .line 159
    sget-object p0, Lcom/estimote/sdk/Utils$Proximity;->NEAR:Lcom/estimote/sdk/Utils$Proximity;

    return-object p0

    .line 161
    :cond_2
    sget-object p0, Lcom/estimote/sdk/Utils$Proximity;->FAR:Lcom/estimote/sdk/Utils$Proximity;

    return-object p0
.end method

.method public static restartBluetooth(Landroid/content/Context;Lcom/estimote/sdk/Utils$RestartCompletedListener;)V
    .locals 3

    const-string v0, "bluetooth"

    .line 202
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 203
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 205
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 206
    new-instance v2, Lcom/estimote/sdk/Utils$1;

    invoke-direct {v2, v0, p1}, Lcom/estimote/sdk/Utils$1;-><init>(Landroid/bluetooth/BluetoothAdapter;Lcom/estimote/sdk/Utils$RestartCompletedListener;)V

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    return-void
.end method

.method private static unsignedByteToInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
