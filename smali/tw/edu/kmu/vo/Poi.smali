.class public Ltw/edu/kmu/vo/Poi;
.super Ljava/lang/Object;
.source "Poi.java"


# instance fields
.field private address:Ljava/lang/String;

.field private benefitList:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private dateTime:Ljava/lang/String;

.field private deltaAngle:D

.field private description:Ljava/lang/String;

.field private distance:D

.field private distanceUnit:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private gallerytype:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private serialNo:Ljava/lang/String;

.field private tel:Ljava/lang/String;

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

    .line 17
    iput-object v0, p0, Ltw/edu/kmu/vo/Poi;->content:Ljava/lang/String;

    const-string v0, ""

    .line 18
    iput-object v0, p0, Ltw/edu/kmu/vo/Poi;->distanceUnit:Ljava/lang/String;

    const-string v0, ""

    .line 22
    iput-object v0, p0, Ltw/edu/kmu/vo/Poi;->benefitList:Ljava/lang/String;

    const-string v0, ""

    .line 23
    iput-object v0, p0, Ltw/edu/kmu/vo/Poi;->address:Ljava/lang/String;

    const-string v0, ""

    .line 24
    iput-object v0, p0, Ltw/edu/kmu/vo/Poi;->tel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBenefitList()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->benefitList:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDeltaAngle()D
    .locals 2

    .line 75
    iget-wide v0, p0, Ltw/edu/kmu/vo/Poi;->deltaAngle:D

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    .line 67
    iget-wide v0, p0, Ltw/edu/kmu/vo/Poi;->distance:D

    return-wide v0
.end method

.method public getDistanceUnit()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->distanceUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getGallerytype()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->gallerytype:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public getTempAngle()D
    .locals 2

    .line 104
    iget-wide v0, p0, Ltw/edu/kmu/vo/Poi;->tempAngle:D

    return-wide v0
.end method

.method public getTempDistance()D
    .locals 2

    .line 112
    iget-wide v0, p0, Ltw/edu/kmu/vo/Poi;->tempDistance:D

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFileName()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->videoFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceFileName()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Ltw/edu/kmu/vo/Poi;->voiceFileName:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->address:Ljava/lang/String;

    return-void
.end method

.method public setBenefitList(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->benefitList:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->content:Ljava/lang/String;

    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->dateTime:Ljava/lang/String;

    return-void
.end method

.method public setDeltaAngle(D)V
    .locals 0

    .line 79
    iput-wide p1, p0, Ltw/edu/kmu/vo/Poi;->deltaAngle:D

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->description:Ljava/lang/String;

    return-void
.end method

.method public setDistance(D)V
    .locals 0

    .line 71
    iput-wide p1, p0, Ltw/edu/kmu/vo/Poi;->distance:D

    return-void
.end method

.method public setDistanceUnit(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->distanceUnit:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setGallerytype(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->gallerytype:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->image:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->serialNo:Ljava/lang/String;

    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->tel:Ljava/lang/String;

    return-void
.end method

.method public setTempAngle(D)V
    .locals 0

    .line 108
    iput-wide p1, p0, Ltw/edu/kmu/vo/Poi;->tempAngle:D

    return-void
.end method

.method public setTempDistance(D)V
    .locals 0

    .line 116
    iput-wide p1, p0, Ltw/edu/kmu/vo/Poi;->tempDistance:D

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->type:Ljava/lang/String;

    return-void
.end method

.method public setVideoFileName(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->videoFileName:Ljava/lang/String;

    return-void
.end method

.method public setVoiceFileName(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Ltw/edu/kmu/vo/Poi;->voiceFileName:Ljava/lang/String;

    return-void
.end method
