.class public Ltw/edu/kmu/act/ARViewActivity;
.super Landroid/app/Activity;
.source "ARViewActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ARViewActivity"

.field public static volatile ctx:Landroid/content/Context;


# instance fields
.field private ar:Ltw/edu/kmu/ar/gui/ARLayout;

.field public augScreen:Ltw/edu/kmu/ar/gui/AugmentedView;

.field private bundle:Landroid/os/Bundle;

.field volatile curLocation:Landroid/location/Location;

.field private cv:Ltw/edu/kmu/act/CustomCameraView;

.field private gpsListener:Landroid/location/LocationListener;

.field private isPad:Z

.field private kmFormatter:Ljava/text/DecimalFormat;

.field private locMan:Landroid/location/LocationManager;

.field private location:Landroid/location/Location;

.field private mFormatter:Ljava/text/DecimalFormat;

.field private mTablayout:Landroid/support/design/widget/TabLayout;

.field private poiList:Ljava/util/ArrayList;
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

.field private queryEnNameAry:[Ljava/lang/String;

.field private queryNameAry:[Ljava/lang/String;

.field private queryTypeAry:[I

.field private sensorMan:Landroid/hardware/SensorManager;

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

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->curLocation:Landroid/location/Location;

    .line 67
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->kmFormatter:Ljava/text/DecimalFormat;

    .line 69
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->mFormatter:Ljava/text/DecimalFormat;

    const/4 v0, 0x6

    .line 77
    iput v0, p0, Ltw/edu/kmu/act/ARViewActivity;->type:I

    const/4 v1, 0x0

    .line 81
    iput-boolean v1, p0, Ltw/edu/kmu/act/ARViewActivity;->isPad:Z

    const/4 v2, 0x7

    .line 87
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Ltw/edu/kmu/act/ARViewActivity;->queryTypeAry:[I

    .line 89
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "\u6821\u5712\u5730\u6a19"

    aput-object v4, v3, v1

    const-string v4, "\u98df"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "\u8863"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "\u4f4f"

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "\u884c"

    const/4 v8, 0x4

    aput-object v4, v3, v8

    const-string v4, "\u80b2"

    const/4 v9, 0x5

    aput-object v4, v3, v9

    const-string v4, "\u6a02"

    aput-object v4, v3, v0

    iput-object v3, p0, Ltw/edu/kmu/act/ARViewActivity;->queryNameAry:[Ljava/lang/String;

    .line 91
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "  Landmark  "

    aput-object v3, v2, v1

    const-string v1, "  Dining  "

    aput-object v1, v2, v5

    const-string v1, "  Clothing  "

    aput-object v1, v2, v6

    const-string v1, "  Housing  "

    aput-object v1, v2, v7

    const-string v1, "  Transportation  "

    aput-object v1, v2, v8

    const-string v1, "  Learning  "

    aput-object v1, v2, v9

    const-string v1, "  Recreation  "

    aput-object v1, v2, v0

    iput-object v2, p0, Ltw/edu/kmu/act/ARViewActivity;->queryEnNameAry:[Ljava/lang/String;

    .line 290
    new-instance v0, Ltw/edu/kmu/act/ARViewActivity$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/ARViewActivity$4;-><init>(Ltw/edu/kmu/act/ARViewActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->gpsListener:Landroid/location/LocationListener;

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

.method static synthetic access$000(Ltw/edu/kmu/act/ARViewActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Ltw/edu/kmu/act/ARViewActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/ARViewActivity;)I
    .locals 0

    .line 44
    iget p0, p0, Ltw/edu/kmu/act/ARViewActivity;->type:I

    return p0
.end method

.method static synthetic access$102(Ltw/edu/kmu/act/ARViewActivity;I)I
    .locals 0

    .line 44
    iput p1, p0, Ltw/edu/kmu/act/ARViewActivity;->type:I

    return p1
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/ARViewActivity;I)I
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/ARViewActivity;->getTypeBtnIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/ARViewActivity;)Landroid/support/design/widget/TabLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Ltw/edu/kmu/act/ARViewActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Ltw/edu/kmu/act/ARViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addFunctionView()V
    .locals 3

    const-string v0, "layout_inflater"

    .line 275
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ARViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 276
    iget-boolean v1, p0, Ltw/edu/kmu/act/ARViewActivity;->isPad:Z

    const v1, 0x7f0a002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 277
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Ltw/edu/kmu/act/ARViewActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0801c7

    .line 279
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 280
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private addLoadingLayouts()V
    .locals 4

    .line 241
    new-instance v0, Ltw/edu/kmu/ar/gui/ARMaker;

    invoke-virtual {p0}, Ltw/edu/kmu/act/ARViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltw/edu/kmu/ar/gui/ARMaker;-><init>(Landroid/content/Context;)V

    .line 242
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 244
    new-instance v2, Ltw/edu/kmu/ar/gui/ARMaker;

    invoke-virtual {p0}, Ltw/edu/kmu/act/ARViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Ltw/edu/kmu/ar/gui/ARMaker;-><init>(Landroid/content/Context;)V

    const-string v3, "aa"

    .line 245
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Ltw/edu/kmu/ar/gui/ARMaker;->azimuth:F

    const/high16 v3, -0x3d600000    # -80.0f

    .line 246
    iput v3, v2, Ltw/edu/kmu/ar/gui/ARMaker;->inclination:F

    const-string v3, "title"

    .line 247
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Ltw/edu/kmu/ar/gui/ARMaker;->name:Ljava/lang/String;

    const-string v3, "distance"

    .line 248
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Ltw/edu/kmu/ar/gui/ARMaker;->distance:Ljava/lang/String;

    const-string v3, "distanceUnit"

    .line 249
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Ltw/edu/kmu/ar/gui/ARMaker;->unit:Ljava/lang/String;

    const-string v3, "description"

    .line 250
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Ltw/edu/kmu/ar/gui/ARMaker;->description:Ljava/lang/String;

    const-string v3, "image"

    .line 251
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Ltw/edu/kmu/ar/gui/ARMaker;->image:Ljava/lang/String;

    .line 252
    iput-object v1, v2, Ltw/edu/kmu/ar/gui/ARMaker;->poi:Ljava/util/HashMap;

    .line 253
    iget-object v1, p0, Ltw/edu/kmu/act/ARViewActivity;->ar:Ltw/edu/kmu/ar/gui/ARLayout;

    invoke-virtual {v1, v2}, Ltw/edu/kmu/ar/gui/ARLayout;->addARView(Landroid/view/View;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->ar:Ltw/edu/kmu/ar/gui/ARLayout;

    invoke-virtual {v0}, Ltw/edu/kmu/ar/gui/ARLayout;->postInvalidate()V

    return-void
.end method

.method private createTab1()V
    .locals 4

    const v0, 0x7f0801a8

    .line 390
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ARViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    const/4 v0, 0x0

    .line 392
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/ARViewActivity;->queryNameAry:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 394
    iget-object v1, p0, Ltw/edu/kmu/act/ARViewActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Ltw/edu/kmu/act/ARViewActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/ARViewActivity;->queryNameAry:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/ARViewActivity;->queryTypeAry:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Ltw/edu/kmu/act/ARViewActivity$6;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/ARViewActivity$6;-><init>(Ltw/edu/kmu/act/ARViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->post(Ljava/lang/Runnable;)Z

    .line 406
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Ltw/edu/kmu/act/ARViewActivity$7;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/ARViewActivity$7;-><init>(Ltw/edu/kmu/act/ARViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private getTypeBtnIndex(I)I
    .locals 3

    .line 434
    sget-object v0, Ltw/edu/kmu/act/ARViewActivity;->TAG:Ljava/lang/String;

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

    .line 436
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/ARViewActivity;->queryTypeAry:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 438
    iget-object v2, p0, Ltw/edu/kmu/act/ARViewActivity;->queryTypeAry:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private maintainAugmentR()V
    .locals 3

    .line 261
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->augScreen:Ltw/edu/kmu/ar/gui/AugmentedView;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ltw/edu/kmu/ar/gui/AugmentedView;

    invoke-direct {v0, p0}, Ltw/edu/kmu/ar/gui/AugmentedView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->augScreen:Ltw/edu/kmu/ar/gui/AugmentedView;

    .line 263
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->augScreen:Ltw/edu/kmu/ar/gui/AugmentedView;

    new-instance v1, Lorg/mixare/lib/gui/PaintScreen;

    invoke-direct {v1}, Lorg/mixare/lib/gui/PaintScreen;-><init>()V

    invoke-virtual {v0, v1}, Ltw/edu/kmu/ar/gui/AugmentedView;->setdWindow(Lorg/mixare/lib/gui/PaintScreen;)V

    .line 264
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->augScreen:Ltw/edu/kmu/ar/gui/AugmentedView;

    iget-object v1, p0, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/ar/gui/AugmentedView;->setAllPoiList(Ljava/util/List;)V

    .line 265
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->augScreen:Ltw/edu/kmu/ar/gui/AugmentedView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ltw/edu/kmu/ar/gui/AugmentedView;->setRx(F)V

    .line 266
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->augScreen:Ltw/edu/kmu/ar/gui/AugmentedView;

    const/high16 v1, 0x42820000    # 65.0f

    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ltw/edu/kmu/ar/gui/AugmentedView;->setRy(F)V

    .line 269
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->augScreen:Ltw/edu/kmu/ar/gui/AugmentedView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Ltw/edu/kmu/act/ARViewActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v1, p0

    .line 97
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "en"

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, v1, Ltw/edu/kmu/act/ARViewActivity;->queryEnNameAry:[Ljava/lang/String;

    iput-object v0, v1, Ltw/edu/kmu/act/ARViewActivity;->queryNameAry:[Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 102
    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/ARViewActivity;->requestWindowFeature(I)Z

    .line 104
    invoke-static/range {p0 .. p0}, Ltw/edu/kmu/tool/SystemInfoTool;->isPad(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v1, Ltw/edu/kmu/act/ARViewActivity;->isPad:Z

    .line 106
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 108
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Ltw/edu/kmu/act/ARViewActivity;->ctx:Landroid/content/Context;

    .line 112
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->bundle:Landroid/os/Bundle;

    .line 114
    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/ARViewActivity;->setRequestedOrientation(I)V

    .line 116
    new-instance v2, Ltw/edu/kmu/ar/gui/ARLayout;

    invoke-direct {v2, v1}, Ltw/edu/kmu/ar/gui/ARLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->ar:Ltw/edu/kmu/ar/gui/ARLayout;

    .line 118
    new-instance v2, Ltw/edu/kmu/act/CustomCameraView;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Ltw/edu/kmu/act/CustomCameraView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->cv:Ltw/edu/kmu/act/CustomCameraView;

    const-string v2, "window"

    .line 119
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/ARViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 121
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 123
    sget-object v5, Ltw/edu/kmu/act/ARViewActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "screenWidth width is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "height is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v5, v1, Ltw/edu/kmu/act/ARViewActivity;->ar:Ltw/edu/kmu/ar/gui/ARLayout;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Ltw/edu/kmu/ar/gui/ARLayout;->setScreenWidth(F)V

    .line 126
    iget-object v5, v1, Ltw/edu/kmu/act/ARViewActivity;->ar:Ltw/edu/kmu/ar/gui/ARLayout;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Ltw/edu/kmu/ar/gui/ARLayout;->setScreenHeight(F)V

    .line 127
    iget-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->ar:Ltw/edu/kmu/ar/gui/ARLayout;

    const/high16 v5, 0x42820000    # 65.0f

    invoke-static {v1, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v5}, Ltw/edu/kmu/ar/gui/ARLayout;->setyBaseUnit(I)V

    .line 128
    iget-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->ar:Ltw/edu/kmu/ar/gui/ARLayout;

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v1, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v5}, Ltw/edu/kmu/ar/gui/ARLayout;->setyUnit(I)V

    .line 130
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 131
    iget-object v5, v1, Ltw/edu/kmu/act/ARViewActivity;->cv:Ltw/edu/kmu/act/CustomCameraView;

    invoke-virtual {v2, v5, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 132
    iget-object v5, v1, Ltw/edu/kmu/act/ARViewActivity;->ar:Ltw/edu/kmu/ar/gui/ARLayout;

    const/4 v6, 0x0

    iput-boolean v6, v5, Ltw/edu/kmu/ar/gui/ARLayout;->debug:Z

    .line 133
    iget-object v5, v1, Ltw/edu/kmu/act/ARViewActivity;->ar:Ltw/edu/kmu/ar/gui/ARLayout;

    invoke-virtual {v2, v5, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 135
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/ARViewActivity;->setContentView(Landroid/view/View;)V

    .line 137
    sget-object v2, Ltw/edu/kmu/act/ARViewActivity;->ctx:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->locMan:Landroid/location/LocationManager;

    .line 138
    iget-object v7, v1, Ltw/edu/kmu/act/ARViewActivity;->locMan:Landroid/location/LocationManager;

    const-string v8, "gps"

    const-wide/16 v9, 0x64

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, v1, Ltw/edu/kmu/act/ARViewActivity;->gpsListener:Landroid/location/LocationListener;

    invoke-virtual/range {v7 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 139
    iget-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->locMan:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    iput-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->location:Landroid/location/Location;

    .line 140
    iget-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->location:Landroid/location/Location;

    if-nez v2, :cond_1

    .line 141
    iget-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->locMan:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    iput-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->location:Landroid/location/Location;

    .line 143
    :cond_1
    sget-object v2, Ltw/edu/kmu/act/ARViewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HoldMeUp here"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ltw/edu/kmu/act/ARViewActivity;->location:Landroid/location/Location;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "serverDataList"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->serverDataList:Ljava/util/ArrayList;

    .line 147
    iget-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Ltw/edu/kmu/act/ARViewActivity;->type:I

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    .line 151
    iget-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 152
    iget v4, v1, Ltw/edu/kmu/act/ARViewActivity;->type:I

    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 153
    iget-object v4, v1, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 158
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0114

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 159
    iget-object v7, v1, Ltw/edu/kmu/act/ARViewActivity;->location:Landroid/location/Location;

    if-eqz v7, :cond_4

    .line 160
    iget-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 161
    iget-object v4, v1, Ltw/edu/kmu/act/ARViewActivity;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    :cond_4
    const/4 v15, 0x0

    .line 163
    :goto_1
    iget-object v7, v1, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v15, v7, :cond_8

    .line 164
    iget-object v7, v1, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/util/HashMap;

    const/4 v7, 0x2

    .line 166
    new-array v14, v7, [F

    const-string v7, "latitude"

    .line 168
    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-string v7, "longitude"

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide v7, v2

    move-wide v9, v4

    move-object v6, v13

    move-object/from16 v18, v14

    move-wide/from16 v13, v16

    move/from16 v16, v15

    move-object/from16 v15, v18

    invoke-static/range {v7 .. v15}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const-string v7, "aa"

    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget v9, v18, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    .line 171
    aget v8, v18, v7

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 172
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide v11, 0x408f400000000000L    # 1000.0

    cmpl-double v13, v9, v11

    if-lez v13, :cond_5

    iget-object v9, v1, Ltw/edu/kmu/act/ARViewActivity;->kmFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    div-double/2addr v13, v11

    invoke-virtual {v9, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_5
    iget-object v9, v1, Ltw/edu/kmu/act/ARViewActivity;->mFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v9, v8}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    const-string v10, "distance"

    .line 173
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v15, v13, v11

    if-lez v15, :cond_6

    iget-object v13, v1, Ltw/edu/kmu/act/ARViewActivity;->kmFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    div-double/2addr v14, v11

    invoke-virtual {v13, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_6
    iget-object v13, v1, Ltw/edu/kmu/act/ARViewActivity;->mFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v13, v8}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :goto_3
    invoke-virtual {v6, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v8, v13, v11

    if-lez v8, :cond_7

    const-string v8, "km"

    goto :goto_4

    :cond_7
    const-string v8, "m"

    :goto_4
    const-string v10, "d"

    .line 175
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "angle"

    const-string v10, "0"

    .line 176
    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "distanceUnit"

    .line 177
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v16, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 180
    :cond_8
    iget-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    new-instance v3, Ltw/edu/kmu/act/ARViewActivity$1;

    invoke-direct {v3, v1}, Ltw/edu/kmu/act/ARViewActivity$1;-><init>(Ltw/edu/kmu/act/ARViewActivity;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    invoke-direct/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->addLoadingLayouts()V

    .line 189
    invoke-direct/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->maintainAugmentR()V

    .line 191
    invoke-direct/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->addFunctionView()V

    const-string v2, "sensor"

    .line 193
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/ARViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->sensorMan:Landroid/hardware/SensorManager;

    .line 194
    iget-object v2, v1, Ltw/edu/kmu/act/ARViewActivity;->sensorMan:Landroid/hardware/SensorManager;

    iget-object v3, v1, Ltw/edu/kmu/act/ARViewActivity;->sensorMan:Landroid/hardware/SensorManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const v0, 0x7f08002c

    .line 196
    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/ARViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f07006f

    .line 197
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v0, 0x7f08002a

    .line 198
    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/ARViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f08002b

    .line 199
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/ARViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 201
    new-instance v3, Ltw/edu/kmu/act/ARViewActivity$2;

    invoke-direct {v3, v1}, Ltw/edu/kmu/act/ARViewActivity$2;-><init>(Ltw/edu/kmu/act/ARViewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v0, Ltw/edu/kmu/act/ARViewActivity$3;

    invoke-direct {v0, v1}, Ltw/edu/kmu/act/ARViewActivity$3;-><init>(Ltw/edu/kmu/act/ARViewActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-direct/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->createTab1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 456
    sget-object v0, Ltw/edu/kmu/act/ARViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 458
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->cv:Ltw/edu/kmu/act/CustomCameraView;

    invoke-virtual {v0}, Ltw/edu/kmu/act/CustomCameraView;->closeCamera()V

    .line 459
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->ar:Ltw/edu/kmu/ar/gui/ARLayout;

    invoke-virtual {v0}, Ltw/edu/kmu/ar/gui/ARLayout;->close()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 449
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 450
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->locMan:Landroid/location/LocationManager;

    iget-object v1, p0, Ltw/edu/kmu/act/ARViewActivity;->gpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 451
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->sensorMan:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 311
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 313
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 314
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity;->augScreen:Ltw/edu/kmu/ar/gui/AugmentedView;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/ar/gui/AugmentedView;->setAngle(F)V

    .line 315
    iget-object p1, p0, Ltw/edu/kmu/act/ARViewActivity;->augScreen:Ltw/edu/kmu/ar/gui/AugmentedView;

    invoke-virtual {p1}, Ltw/edu/kmu/ar/gui/AugmentedView;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateList()V
    .locals 19

    move-object/from16 v0, p0

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    .line 327
    iget-object v1, v0, Ltw/edu/kmu/act/ARViewActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 328
    iget v3, v0, Ltw/edu/kmu/act/ARViewActivity;->type:I

    const-string v4, "type"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 329
    iget-object v3, v0, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 333
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0114

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 334
    iget-object v5, v0, Ltw/edu/kmu/act/ARViewActivity;->location:Landroid/location/Location;

    if-eqz v5, :cond_2

    .line 335
    iget-object v1, v0, Ltw/edu/kmu/act/ARViewActivity;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 336
    iget-object v3, v0, Ltw/edu/kmu/act/ARViewActivity;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    :cond_2
    const/4 v15, 0x0

    .line 338
    :goto_1
    iget-object v5, v0, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v15, v5, :cond_6

    .line 339
    iget-object v5, v0, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Ljava/util/HashMap;

    const/4 v5, 0x2

    .line 341
    new-array v11, v5, [F

    const-string v5, "latitude"

    .line 343
    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-string v5, "longitude"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide v5, v1

    move-wide v7, v3

    move-object/from16 v18, v11

    move-wide/from16 v11, v16

    move-object v14, v13

    move-object/from16 v13, v18

    invoke-static/range {v5 .. v13}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const-string v5, "aa"

    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    aget v7, v18, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 346
    aget v6, v18, v5

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 347
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    cmpl-double v11, v7, v9

    if-lez v11, :cond_3

    iget-object v7, v0, Ltw/edu/kmu/act/ARViewActivity;->kmFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    div-double/2addr v11, v9

    invoke-virtual {v7, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    iget-object v7, v0, Ltw/edu/kmu/act/ARViewActivity;->mFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v7, v6}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    const-string v8, "distance"

    .line 349
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpl-double v13, v11, v9

    if-lez v13, :cond_4

    iget-object v11, v0, Ltw/edu/kmu/act/ARViewActivity;->kmFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    div-double/2addr v12, v9

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_4
    iget-object v11, v0, Ltw/edu/kmu/act/ARViewActivity;->mFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v11, v6}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_3
    invoke-virtual {v14, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpl-double v6, v11, v9

    if-lez v6, :cond_5

    const-string v6, "km"

    goto :goto_4

    :cond_5
    const-string v6, "m"

    :goto_4
    const-string v8, "d"

    .line 351
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "angle"

    const-string v8, "0"

    .line 352
    invoke-virtual {v14, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "distanceUnit"

    .line 353
    invoke-virtual {v14, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 356
    :cond_6
    iget-object v1, v0, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    new-instance v2, Ltw/edu/kmu/act/ARViewActivity$5;

    invoke-direct {v2, v0}, Ltw/edu/kmu/act/ARViewActivity$5;-><init>(Ltw/edu/kmu/act/ARViewActivity;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 362
    iget-object v1, v0, Ltw/edu/kmu/act/ARViewActivity;->augScreen:Ltw/edu/kmu/ar/gui/AugmentedView;

    iget-object v2, v0, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ltw/edu/kmu/ar/gui/AugmentedView;->setAllPoiList(Ljava/util/List;)V

    .line 363
    iget-object v1, v0, Ltw/edu/kmu/act/ARViewActivity;->ar:Ltw/edu/kmu/ar/gui/ARLayout;

    invoke-virtual {v1}, Ltw/edu/kmu/ar/gui/ARLayout;->clearARViews()V

    .line 364
    new-instance v1, Ltw/edu/kmu/ar/gui/ARMaker;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ltw/edu/kmu/ar/gui/ARMaker;-><init>(Landroid/content/Context;)V

    .line 366
    iget-object v1, v0, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 368
    new-instance v3, Ltw/edu/kmu/ar/gui/ARMaker;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ltw/edu/kmu/ar/gui/ARMaker;-><init>(Landroid/content/Context;)V

    const-string v4, "aa"

    .line 369
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Ltw/edu/kmu/ar/gui/ARMaker;->azimuth:F

    const/high16 v4, -0x3d600000    # -80.0f

    .line 370
    iput v4, v3, Ltw/edu/kmu/ar/gui/ARMaker;->inclination:F

    const-string v4, "title"

    .line 371
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Ltw/edu/kmu/ar/gui/ARMaker;->name:Ljava/lang/String;

    const-string v4, "distance"

    .line 372
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Ltw/edu/kmu/ar/gui/ARMaker;->distance:Ljava/lang/String;

    const-string v4, "distanceUnit"

    .line 373
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Ltw/edu/kmu/ar/gui/ARMaker;->unit:Ljava/lang/String;

    const-string v4, "description"

    .line 374
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Ltw/edu/kmu/ar/gui/ARMaker;->description:Ljava/lang/String;

    const-string v4, "image"

    .line 375
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Ltw/edu/kmu/ar/gui/ARMaker;->image:Ljava/lang/String;

    .line 376
    iget-object v2, v0, Ltw/edu/kmu/act/ARViewActivity;->ar:Ltw/edu/kmu/ar/gui/ARLayout;

    invoke-virtual {v2, v3}, Ltw/edu/kmu/ar/gui/ARLayout;->addARView(Landroid/view/View;)V

    goto :goto_5

    .line 380
    :cond_7
    iget-object v1, v0, Ltw/edu/kmu/act/ARViewActivity;->ar:Ltw/edu/kmu/ar/gui/ARLayout;

    invoke-virtual {v1}, Ltw/edu/kmu/ar/gui/ARLayout;->postInvalidate()V

    .line 382
    sget-object v1, Ltw/edu/kmu/act/ARViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateList type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Ltw/edu/kmu/act/ARViewActivity;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and poilist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ltw/edu/kmu/act/ARViewActivity;->poiList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
