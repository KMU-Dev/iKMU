.class public Lcom/estimote/sdk/utils/EstimoteBeacons;
.super Ljava/lang/Object;
.source "EstimoteBeacons.java"


# static fields
.field public static final ESTIMOTE_IOS_PROXIMITY_UUID:Ljava/lang/String; = "8492E75F-4FD6-469D-B132-043FE94921D8"

.field public static final ESTIMOTE_MAC_PROXIMITY_UUID:Ljava/lang/String; = "08D4A950-80F0-4D42-A14B-D53E063516E6"

.field public static final ESTIMOTE_PROXIMITY_UUID:Ljava/lang/String; = "B9407F30-F5F8-466E-AFF9-25556B57FE6D"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEstimoteBeacon(Lcom/estimote/sdk/Beacon;)Z
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/estimote/sdk/utils/EstimoteBeacons;->isMacBeacon(Lcom/estimote/sdk/Beacon;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/estimote/sdk/utils/EstimoteBeacons;->isIOSBeacon(Lcom/estimote/sdk/Beacon;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/estimote/sdk/utils/EstimoteBeacons;->isOriginalEstimoteUuid(Lcom/estimote/sdk/Beacon;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estimote/sdk/Beacon;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/estimote/sdk/utils/EstimoteBeacons;->isValidName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isIOSBeacon(Lcom/estimote/sdk/Beacon;)Z
    .locals 1

    const-string v0, "8492E75F-4FD6-469D-B132-043FE94921D8"

    .line 21
    invoke-virtual {p0}, Lcom/estimote/sdk/Beacon;->getProximityUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMacBeacon(Lcom/estimote/sdk/Beacon;)Z
    .locals 1

    const-string v0, "08D4A950-80F0-4D42-A14B-D53E063516E6"

    .line 29
    invoke-virtual {p0}, Lcom/estimote/sdk/Beacon;->getProximityUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isOriginalEstimoteUuid(Lcom/estimote/sdk/Beacon;)Z
    .locals 1

    const-string v0, "B9407F30-F5F8-466E-AFF9-25556B57FE6D"

    .line 33
    invoke-virtual {p0}, Lcom/estimote/sdk/Beacon;->getProximityUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isValidName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "estimote"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "est"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
