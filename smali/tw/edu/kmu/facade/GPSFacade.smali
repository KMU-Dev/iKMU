.class public Ltw/edu/kmu/facade/GPSFacade;
.super Ljava/lang/Object;
.source "GPSFacade.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPSFacade"

.field private static instance:Ltw/edu/kmu/facade/GPSFacade;


# instance fields
.field private adapter:Landroid/widget/SimpleAdapter;

.field private context:Landroid/content/Context;

.field private isARListener:Z

.field private kmFormatter:Ljava/text/DecimalFormat;

.field private ll:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private mFormatter:Ljava/text/DecimalFormat;

.field private provider:Ljava/lang/String;

.field private providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltw/edu/kmu/facade/GPSFacade;->kmFormatter:Ljava/text/DecimalFormat;

    .line 29
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltw/edu/kmu/facade/GPSFacade;->mFormatter:Ljava/text/DecimalFormat;

    .line 32
    new-instance v0, Ltw/edu/kmu/facade/GPSFacade$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/facade/GPSFacade$1;-><init>(Ltw/edu/kmu/facade/GPSFacade;)V

    iput-object v0, p0, Ltw/edu/kmu/facade/GPSFacade;->ll:Landroid/location/LocationListener;

    .line 92
    iput-object p1, p0, Ltw/edu/kmu/facade/GPSFacade;->context:Landroid/content/Context;

    const-string v0, "location"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Ltw/edu/kmu/facade/GPSFacade;->locationManager:Landroid/location/LocationManager;

    .line 95
    iget-object p1, p0, Ltw/edu/kmu/facade/GPSFacade;->providers:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltw/edu/kmu/facade/GPSFacade;->providers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v0, :cond_2

    .line 96
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/facade/GPSFacade;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/facade/GPSFacade;->providers:Ljava/util/List;

    .line 97
    iget-object p1, p0, Ltw/edu/kmu/facade/GPSFacade;->providers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-static {v0}, Ltw/edu/kmu/facade/GPSFacade;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Ltw/edu/kmu/facade/GPSFacade;->locationManager:Landroid/location/LocationManager;

    const-string p1, "gps"

    iput-object p1, p0, Ltw/edu/kmu/facade/GPSFacade;->provider:Ljava/lang/String;

    .line 105
    :cond_2
    iget-object v0, p0, Ltw/edu/kmu/facade/GPSFacade;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Ltw/edu/kmu/facade/GPSFacade;->provider:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    iget-object v5, p0, Ltw/edu/kmu/facade/GPSFacade;->ll:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string p1, "\u7522\u751f\u65b0\u7684GPSFacade"

    .line 106
    invoke-static {p1}, Ltw/edu/kmu/facade/GPSFacade;->log(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Ltw/edu/kmu/facade/GPSFacade;->provider:Ljava/lang/String;

    invoke-static {p1}, Ltw/edu/kmu/facade/GPSFacade;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-static {p0}, Ltw/edu/kmu/facade/GPSFacade;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/facade/GPSFacade;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Ltw/edu/kmu/facade/GPSFacade;->isARListener:Z

    return p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/facade/GPSFacade;)Ljava/util/ArrayList;
    .locals 0

    .line 18
    iget-object p0, p0, Ltw/edu/kmu/facade/GPSFacade;->serverDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/facade/GPSFacade;)Ljava/text/DecimalFormat;
    .locals 0

    .line 18
    iget-object p0, p0, Ltw/edu/kmu/facade/GPSFacade;->kmFormatter:Ljava/text/DecimalFormat;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/facade/GPSFacade;)Ljava/text/DecimalFormat;
    .locals 0

    .line 18
    iget-object p0, p0, Ltw/edu/kmu/facade/GPSFacade;->mFormatter:Ljava/text/DecimalFormat;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/facade/GPSFacade;)Landroid/widget/SimpleAdapter;
    .locals 0

    .line 18
    iget-object p0, p0, Ltw/edu/kmu/facade/GPSFacade;->adapter:Landroid/widget/SimpleAdapter;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Ltw/edu/kmu/facade/GPSFacade;
    .locals 1

    .line 111
    sget-object v0, Ltw/edu/kmu/facade/GPSFacade;->instance:Ltw/edu/kmu/facade/GPSFacade;

    if-eqz v0, :cond_0

    const-string p0, "\u50b3\u56de\u73fe\u6709\u7684GPSFacade"

    .line 112
    invoke-static {p0}, Ltw/edu/kmu/facade/GPSFacade;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "context\u7121\u6cd5\u7522\u751fGPSFacade"

    .line 115
    invoke-static {p0}, Ltw/edu/kmu/facade/GPSFacade;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Ltw/edu/kmu/facade/GPSFacade;

    invoke-direct {v0, p0}, Ltw/edu/kmu/facade/GPSFacade;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltw/edu/kmu/facade/GPSFacade;->instance:Ltw/edu/kmu/facade/GPSFacade;

    .line 120
    :goto_0
    sget-object p0, Ltw/edu/kmu/facade/GPSFacade;->instance:Ltw/edu/kmu/facade/GPSFacade;

    return-object p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 166
    sget-object v0, Ltw/edu/kmu/facade/GPSFacade;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addToUpdateARList(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SimpleAdapter;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Ltw/edu/kmu/facade/GPSFacade;->adapter:Landroid/widget/SimpleAdapter;

    .line 172
    iput-object p2, p0, Ltw/edu/kmu/facade/GPSFacade;->serverDataList:Ljava/util/ArrayList;

    .line 173
    iput-boolean p3, p0, Ltw/edu/kmu/facade/GPSFacade;->isARListener:Z

    return-void
.end method

.method public getLocation()Landroid/location/Location;
    .locals 3

    .line 136
    invoke-virtual {p0}, Ltw/edu/kmu/facade/GPSFacade;->isGPSEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u7121\u6cd5\u53d6\u5f97GPS"

    .line 137
    invoke-static {v0}, Ltw/edu/kmu/facade/GPSFacade;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/facade/GPSFacade;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Ltw/edu/kmu/facade/GPSFacade;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 146
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltw/edu/kmu/facade/GPSFacade;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method public isGPSEnable()Z
    .locals 2

    .line 127
    iget-object v0, p0, Ltw/edu/kmu/facade/GPSFacade;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeUpdates()V
    .locals 2

    .line 178
    iget-object v0, p0, Ltw/edu/kmu/facade/GPSFacade;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Ltw/edu/kmu/facade/GPSFacade;->ll:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public requestGPSLocationUpdates(JF)V
    .locals 6

    .line 182
    iget-object v0, p0, Ltw/edu/kmu/facade/GPSFacade;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Ltw/edu/kmu/facade/GPSFacade;->ll:Landroid/location/LocationListener;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public requestNetworkLocationUpdates()V
    .locals 6

    .line 190
    iget-object v0, p0, Ltw/edu/kmu/facade/GPSFacade;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Ltw/edu/kmu/facade/GPSFacade;->ll:Landroid/location/LocationListener;

    const-wide/16 v2, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public requestNetworkLocationUpdates(JF)V
    .locals 6

    .line 186
    iget-object v0, p0, Ltw/edu/kmu/facade/GPSFacade;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Ltw/edu/kmu/facade/GPSFacade;->ll:Landroid/location/LocationListener;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method
