.class public Ltw/edu/kmu/act/ARMapV2Activity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ARMapV2Activity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ARMapV2Activity"


# instance fields
.field private allPoiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private bundle:Landroid/os/Bundle;

.field private frontCam:Z

.field private isPad:Z

.field private isSensorExist:Z

.field private mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mTablayout:Landroid/support/design/widget/TabLayout;

.field private queryEnNameAry:[Ljava/lang/String;

.field private queryNameAry:[Ljava/lang/String;

.field private queryTypeAry:[I

.field private rearCam:Z

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

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x6

    .line 47
    iput v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->type:I

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Ltw/edu/kmu/act/ARMapV2Activity;->isPad:Z

    const/4 v2, 0x1

    .line 55
    iput-boolean v2, p0, Ltw/edu/kmu/act/ARMapV2Activity;->isSensorExist:Z

    const/4 v3, 0x7

    .line 59
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Ltw/edu/kmu/act/ARMapV2Activity;->queryTypeAry:[I

    .line 61
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "\u6821\u5712\u5730\u6a19"

    aput-object v5, v4, v1

    const-string v5, "\u98df"

    aput-object v5, v4, v2

    const-string v5, "\u8863"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string v5, "\u4f4f"

    const/4 v7, 0x3

    aput-object v5, v4, v7

    const-string v5, "\u884c"

    const/4 v8, 0x4

    aput-object v5, v4, v8

    const-string v5, "\u80b2"

    const/4 v9, 0x5

    aput-object v5, v4, v9

    const-string v5, "\u6a02"

    aput-object v5, v4, v0

    iput-object v4, p0, Ltw/edu/kmu/act/ARMapV2Activity;->queryNameAry:[Ljava/lang/String;

    .line 63
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "  Landmark  "

    aput-object v4, v3, v1

    const-string v1, "  Dining  "

    aput-object v1, v3, v2

    const-string v1, "  Clothing  "

    aput-object v1, v3, v6

    const-string v1, "  Housing  "

    aput-object v1, v3, v7

    const-string v1, "  Transportation  "

    aput-object v1, v3, v8

    const-string v1, "  Learning  "

    aput-object v1, v3, v9

    const-string v1, "  Recreation  "

    aput-object v1, v3, v0

    iput-object v3, p0, Ltw/edu/kmu/act/ARMapV2Activity;->queryEnNameAry:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/ARMapV2Activity;)I
    .locals 0

    .line 37
    iget p0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->type:I

    return p0
.end method

.method static synthetic access$002(Ltw/edu/kmu/act/ARMapV2Activity;I)I
    .locals 0

    .line 37
    iput p1, p0, Ltw/edu/kmu/act/ARMapV2Activity;->type:I

    return p1
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/ARMapV2Activity;I)I
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/ARMapV2Activity;->getTypeBtnIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/ARMapV2Activity;)Landroid/support/design/widget/TabLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Ltw/edu/kmu/act/ARMapV2Activity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/ARMapV2Activity;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->allPoiList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/ARMapV2Activity;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private clearPoi()V
    .locals 1

    .line 306
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    return-void
.end method

.method private createTab1()V
    .locals 4

    const v0, 0x7f0801a8

    .line 98
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ARMapV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    const/4 v0, 0x0

    .line 100
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/ARMapV2Activity;->queryNameAry:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/ARMapV2Activity;->queryNameAry:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/ARMapV2Activity;->queryTypeAry:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Ltw/edu/kmu/act/ARMapV2Activity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/ARMapV2Activity$1;-><init>(Ltw/edu/kmu/act/ARMapV2Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->post(Ljava/lang/Runnable;)Z

    .line 114
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Ltw/edu/kmu/act/ARMapV2Activity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/ARMapV2Activity$2;-><init>(Ltw/edu/kmu/act/ARMapV2Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private getTypeBtnIndex(I)I
    .locals 3

    .line 142
    sget-object v0, Ltw/edu/kmu/act/ARMapV2Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 144
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/ARMapV2Activity;->queryTypeAry:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 146
    iget-object v2, p0, Ltw/edu/kmu/act/ARMapV2Activity;->queryTypeAry:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private initFunctionBtn()V
    .locals 3

    .line 237
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARMapV2Activity;->chechkSensor()V

    .line 239
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARMapV2Activity;->checkCamera()V

    .line 241
    iget-boolean v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->rearCam:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->isSensorExist:Z

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f08002d

    .line 243
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ARMapV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    const v0, 0x7f08002b

    .line 247
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ARMapV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f07006d

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v0, 0x7f08002a

    .line 249
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ARMapV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f08002c

    .line 250
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/ARMapV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 252
    new-instance v2, Ltw/edu/kmu/act/ARMapV2Activity$4;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/ARMapV2Activity$4;-><init>(Ltw/edu/kmu/act/ARMapV2Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    new-instance v0, Ltw/edu/kmu/act/ARMapV2Activity$5;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/ARMapV2Activity$5;-><init>(Ltw/edu/kmu/act/ARMapV2Activity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showPoi(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 316
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->allPoiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 319
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->allPoiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 321
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 323
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    const-string v3, "latitude"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v5, "longitude"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 326
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    const-string v3, "title"

    .line 332
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 342
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 345
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->allPoiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v2, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public chechkSensor()V
    .locals 2

    const-string v0, "sensor"

    .line 226
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ARMapV2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    .line 227
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->isSensorExist:Z

    :cond_0
    return-void
.end method

.method public checkCamera()V
    .locals 3

    .line 289
    sget-object v0, Ltw/edu/kmu/act/ARMapV2Activity;->TAG:Ljava/lang/String;

    const-string v1, "checkCamera is start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARMapV2Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.front"

    .line 294
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Ltw/edu/kmu/act/ARMapV2Activity;->frontCam:Z

    const-string v1, "android.hardware.camera"

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->rearCam:Z

    .line 297
    sget-object v0, Ltw/edu/kmu/act/ARMapV2Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frontCam is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltw/edu/kmu/act/ARMapV2Activity;->frontCam:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " and rearCam is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltw/edu/kmu/act/ARMapV2Activity;->rearCam:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initMap()V
    .locals 7

    .line 175
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 177
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v3, 0x4037fac3a860dcbaL    # 23.979548

    const-wide v5, 0x405e1fcaab8a5ce6L    # 120.496745

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 179
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 181
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Ltw/edu/kmu/act/ARMapV2Activity$3;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/ARMapV2Activity$3;-><init>(Ltw/edu/kmu/act/ARMapV2Activity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 206
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->bundle:Landroid/os/Bundle;

    const-string v2, "serverDataList"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    .line 207
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->bundle:Landroid/os/Bundle;

    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->type:I

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->allPoiList:Ljava/util/List;

    .line 209
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 211
    iget v3, p0, Ltw/edu/kmu/act/ARMapV2Activity;->type:I

    const-string v4, "type"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 212
    iget-object v3, p0, Ltw/edu/kmu/act/ARMapV2Activity;->allPoiList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "startnumber"

    const-string v3, "1"

    .line 216
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "endnumber"

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltw/edu/kmu/act/ARMapV2Activity;->allPoiList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-direct {p0, v0}, Ltw/edu/kmu/act/ARMapV2Activity;->showPoi(Ljava/util/Map;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARMapV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ARMapV2Activity;->bundle:Landroid/os/Bundle;

    .line 72
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARMapV2Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 74
    invoke-static {p0}, Ltw/edu/kmu/tool/SystemInfoTool;->isPad(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Ltw/edu/kmu/act/ARMapV2Activity;->isPad:Z

    .line 76
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARMapV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c008a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Ltw/edu/kmu/act/ARMapV2Activity;->queryEnNameAry:[Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/ARMapV2Activity;->queryNameAry:[Ljava/lang/String;

    .line 81
    :cond_0
    iget-boolean p1, p0, Ltw/edu/kmu/act/ARMapV2Activity;->isPad:Z

    const p1, 0x7f0a0026

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ARMapV2Activity;->setContentView(I)V

    const p1, 0x7f0801c7

    .line 83
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ARMapV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARMapV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARMapV2Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f080125

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 88
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 158
    iput-object p1, p0, Ltw/edu/kmu/act/ARMapV2Activity;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 160
    invoke-direct {p0}, Ltw/edu/kmu/act/ARMapV2Activity;->createTab1()V

    .line 162
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARMapV2Activity;->initMap()V

    .line 164
    invoke-direct {p0}, Ltw/edu/kmu/act/ARMapV2Activity;->initFunctionBtn()V

    return-void
.end method

.method public updateList()V
    .locals 4

    .line 357
    invoke-direct {p0}, Ltw/edu/kmu/act/ARMapV2Activity;->clearPoi()V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->allPoiList:Ljava/util/List;

    .line 359
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 360
    iget v2, p0, Ltw/edu/kmu/act/ARMapV2Activity;->type:I

    const-string v3, "type"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 361
    iget-object v2, p0, Ltw/edu/kmu/act/ARMapV2Activity;->allPoiList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "startnumber"

    const-string v2, "1"

    .line 366
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "endnumber"

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltw/edu/kmu/act/ARMapV2Activity;->allPoiList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v1, Ltw/edu/kmu/act/ARMapV2Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateList type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ltw/edu/kmu/act/ARMapV2Activity;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "and poilist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/ARMapV2Activity;->allPoiList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0, v0}, Ltw/edu/kmu/act/ARMapV2Activity;->showPoi(Ljava/util/Map;)V

    return-void
.end method
