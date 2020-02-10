.class public Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;
.super Ljava/lang/Object;
.source "BeaconConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/connection/BeaconConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BeaconCharacteristics"
.end annotation


# instance fields
.field private final advertisingIntervalMillis:Ljava/lang/Integer;

.field private final batteryPercent:Ljava/lang/Integer;

.field private final broadcastingPower:Ljava/lang/Byte;

.field private final hardwareVersion:Ljava/lang/String;

.field private final softwareVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estimote/sdk/connection/EstimoteService;Lcom/estimote/sdk/connection/VersionService;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Lcom/estimote/sdk/connection/EstimoteService;->getPowerDBM()Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->broadcastingPower:Ljava/lang/Byte;

    .line 103
    invoke-virtual {p1}, Lcom/estimote/sdk/connection/EstimoteService;->getBatteryPercent()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->batteryPercent:Ljava/lang/Integer;

    .line 104
    invoke-virtual {p1}, Lcom/estimote/sdk/connection/EstimoteService;->getAdvertisingIntervalMillis()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->advertisingIntervalMillis:Ljava/lang/Integer;

    .line 105
    invoke-virtual {p2}, Lcom/estimote/sdk/connection/VersionService;->getSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->softwareVersion:Ljava/lang/String;

    .line 106
    invoke-virtual {p2}, Lcom/estimote/sdk/connection/VersionService;->getHardwareVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->hardwareVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdvertisingIntervalMillis()Ljava/lang/Integer;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->advertisingIntervalMillis:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBatteryPercent()Ljava/lang/Integer;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->batteryPercent:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBroadcastingPower()Ljava/lang/Byte;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->broadcastingPower:Ljava/lang/Byte;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->hardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->softwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 126
    invoke-static {p0}, Lcom/estimote/sdk/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "batteryPercent"

    iget-object v2, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->batteryPercent:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "broadcastingPower"

    iget-object v2, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->broadcastingPower:Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "advertisingIntervalMillis"

    iget-object v2, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->advertisingIntervalMillis:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "softwareVersion"

    iget-object v2, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "hardwareVersion"

    iget-object v2, p0, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;->hardwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
