.class public Ltw/com/chte/south/vo/Poi;
.super Ljava/lang/Object;
.source "Poi.java"


# instance fields
.field private content:Ljava/lang/String;

.field private dateTime:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private serialNo:Ljava/lang/String;

.field private tempAngle:D

.field private tempDistance:D

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private videoFileName:Ljava/lang/String;

.field private voiceFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Ltw/com/chte/south/vo/Poi;->content:Ljava/lang/String;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Ltw/com/chte/south/vo/Poi;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Ltw/com/chte/south/vo/Poi;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Ltw/com/chte/south/vo/Poi;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Ltw/com/chte/south/vo/Poi;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Ltw/com/chte/south/vo/Poi;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Ltw/com/chte/south/vo/Poi;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Ltw/com/chte/south/vo/Poi;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Ltw/com/chte/south/vo/Poi;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTempAngle()D
    .locals 2

    .line 19
    iget-wide v0, p0, Ltw/com/chte/south/vo/Poi;->tempAngle:D

    return-wide v0
.end method

.method public getTempDistance()D
    .locals 2

    .line 25
    iget-wide v0, p0, Ltw/com/chte/south/vo/Poi;->tempDistance:D

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Ltw/com/chte/south/vo/Poi;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Ltw/com/chte/south/vo/Poi;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFileName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Ltw/com/chte/south/vo/Poi;->videoFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceFileName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Ltw/com/chte/south/vo/Poi;->voiceFileName:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Ltw/com/chte/south/vo/Poi;->content:Ljava/lang/String;

    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Ltw/com/chte/south/vo/Poi;->dateTime:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Ltw/com/chte/south/vo/Poi;->description:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Ltw/com/chte/south/vo/Poi;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Ltw/com/chte/south/vo/Poi;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Ltw/com/chte/south/vo/Poi;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Ltw/com/chte/south/vo/Poi;->serialNo:Ljava/lang/String;

    return-void
.end method

.method public setTempAngle(D)V
    .locals 0

    .line 22
    iput-wide p1, p0, Ltw/com/chte/south/vo/Poi;->tempAngle:D

    return-void
.end method

.method public setTempDistance(D)V
    .locals 0

    .line 28
    iput-wide p1, p0, Ltw/com/chte/south/vo/Poi;->tempDistance:D

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Ltw/com/chte/south/vo/Poi;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Ltw/com/chte/south/vo/Poi;->type:Ljava/lang/String;

    return-void
.end method

.method public setVideoFileName(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Ltw/com/chte/south/vo/Poi;->videoFileName:Ljava/lang/String;

    return-void
.end method

.method public setVoiceFileName(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Ltw/com/chte/south/vo/Poi;->voiceFileName:Ljava/lang/String;

    return-void
.end method
