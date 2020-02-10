.class public Ltw/edu/kmu/act/WacTeaFun3Activity;
.super Landroid/app/Activity;
.source "WacTeaFun3Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;,
        Ltw/edu/kmu/act/WacTeaFun3Activity$SamplePagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WacTeaFun3Activity"


# instance fields
.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private btn3:Landroid/widget/Button;

.field private bundle:Landroid/os/Bundle;

.field private crscentimeList:Ljava/util/ArrayList;
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

.field private crsopenfList:Ljava/util/ArrayList;
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

.field private crsprogList:Ljava/util/ArrayList;
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

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private isEnglish:Z

.field private mTablayout:Landroid/support/design/widget/TabLayout;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private myTitle:Landroid/widget/TextView;

.field oriList:Ljava/util/ArrayList;
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

.field private pageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private title1:Landroid/widget/TextView;

.field private typeEnKey:[Ljava/lang/String;

.field private typeIdx:I

.field private typeKey:[Ljava/lang/String;

.field private weekName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x7

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u4e00"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u4e8c"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "\u4e09"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "\u56db"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "\u4e94"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "\u516d"

    const/4 v6, 0x5

    aput-object v1, v0, v6

    const-string v1, "\u65e5"

    const/4 v6, 0x6

    aput-object v1, v0, v6

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->weekName:[Ljava/lang/String;

    .line 64
    iput-boolean v2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->isEnglish:Z

    .line 66
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u4e3b\u6388\u8ab2"

    aput-object v1, v0, v2

    const-string v1, "\u975e\u4e3b\u6388\u8ab2"

    aput-object v1, v0, v3

    const-string v1, "\u96c6\u4e2d\u4e0a\u8ab2block"

    aput-object v1, v0, v4

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeKey:[Ljava/lang/String;

    .line 68
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Main leacture"

    aput-object v1, v0, v2

    const-string v1, "Non-main leacture"

    aput-object v1, v0, v3

    const-string v1, "Block"

    aput-object v1, v0, v4

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeEnKey:[Ljava/lang/String;

    .line 70
    iput v2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeIdx:I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->oriList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/WacTeaFun3Activity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->showTypeDialog()V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun3Activity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/WacTeaFun3Activity;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->pageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1400(Ltw/edu/kmu/act/WacTeaFun3Activity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$1500(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/os/Bundle;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$1602(Ltw/edu/kmu/act/WacTeaFun3Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->crsopenfList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1702(Ltw/edu/kmu/act/WacTeaFun3Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->crsprogList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1802(Ltw/edu/kmu/act/WacTeaFun3Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->crscentimeList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/widget/Button;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn1:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/widget/Button;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn2:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/widget/Button;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn3:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$502(Ltw/edu/kmu/act/WacTeaFun3Activity;I)I
    .locals 0

    .line 43
    iput p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeIdx:I

    return p1
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/WacTeaFun3Activity;IZ)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Ltw/edu/kmu/act/WacTeaFun3Activity;->showList(IZ)V

    return-void
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/WacTeaFun3Activity;)[Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeKey:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/WacTeaFun3Activity;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->title1:Landroid/widget/TextView;

    return-object p0
.end method

.method private createTab()V
    .locals 5

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->pageList:Ljava/util/List;

    const v0, 0x7f0801af

    .line 301
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    const/4 v0, 0x0

    .line 302
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->weekName:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 304
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->weekName:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 305
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0a00f2

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 306
    iget-object v2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->pageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f08013c

    .line 309
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 310
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Ltw/edu/kmu/act/WacTeaFun3Activity$SamplePagerAdapter;

    invoke-direct {v1, p0, v2}, Ltw/edu/kmu/act/WacTeaFun3Activity$SamplePagerAdapter;-><init>(Ltw/edu/kmu/act/WacTeaFun3Activity;Ltw/edu/kmu/act/WacTeaFun3Activity$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 312
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->initListener()V

    return-void
.end method

.method private getLayoutId()I
    .locals 1

    const v0, 0x7f0a00f1

    return v0
.end method

.method private initBtnFunction()V
    .locals 5

    const v0, 0x7f0801c9

    .line 107
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->title1:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->title1:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->title1:Landroid/widget/TextView;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeKey:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    .line 111
    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->title1:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->title1:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 114
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->title1:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->title1:Landroid/widget/TextView;

    new-instance v4, Ltw/edu/kmu/act/WacTeaFun3Activity$1;

    invoke-direct {v4, p0}, Ltw/edu/kmu/act/WacTeaFun3Activity$1;-><init>(Ltw/edu/kmu/act/WacTeaFun3Activity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080052

    .line 126
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn1:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn1:Landroid/widget/Button;

    iget-object v4, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeKey:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 129
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn1:Landroid/widget/Button;

    new-instance v2, Ltw/edu/kmu/act/WacTeaFun3Activity$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/WacTeaFun3Activity$2;-><init>(Ltw/edu/kmu/act/WacTeaFun3Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08005c

    .line 144
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn2:Landroid/widget/Button;

    .line 145
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn2:Landroid/widget/Button;

    iget-object v2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeKey:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 147
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn2:Landroid/widget/Button;

    new-instance v2, Ltw/edu/kmu/act/WacTeaFun3Activity$3;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/WacTeaFun3Activity$3;-><init>(Ltw/edu/kmu/act/WacTeaFun3Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080061

    .line 162
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn3:Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn3:Landroid/widget/Button;

    iget-object v2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeKey:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 165
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn3:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/WacTeaFun3Activity$4;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaFun3Activity$4;-><init>(Ltw/edu/kmu/act/WacTeaFun3Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn1:Landroid/widget/Button;

    const-string v1, "#FFCC66"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 181
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn2:Landroid/widget/Button;

    const-string v1, "#555555"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 182
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->btn3:Landroid/widget/Button;

    const-string v1, "#555555"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    return-void
.end method

.method private initListener()V
    .locals 3

    .line 317
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Ltw/edu/kmu/act/WacTeaFun3Activity$7;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaFun3Activity$7;-><init>(Ltw/edu/kmu/act/WacTeaFun3Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 342
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v1, v2}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private showList(IZ)V
    .locals 11

    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 229
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->crsopenfList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_0

    .line 230
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->crsopenfList:Ljava/util/ArrayList;

    iput-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->oriList:Ljava/util/ArrayList;

    .line 231
    iput v3, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeIdx:I

    .line 232
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->title1:Landroid/widget/TextView;

    iget-object v4, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeKey:[Ljava/lang/String;

    iget v5, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeIdx:I

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->crsprogList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 234
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->crsprogList:Ljava/util/ArrayList;

    iput-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->oriList:Ljava/util/ArrayList;

    .line 235
    iput v1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeIdx:I

    .line 236
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->title1:Landroid/widget/TextView;

    iget-object v4, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeKey:[Ljava/lang/String;

    iget v5, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeIdx:I

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->crscentimeList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_5

    .line 238
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->crscentimeList:Ljava/util/ArrayList;

    iput-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->oriList:Ljava/util/ArrayList;

    .line 239
    iput v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeIdx:I

    .line 240
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->title1:Landroid/widget/TextView;

    iget-object v4, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeKey:[Ljava/lang/String;

    iget v5, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeIdx:I

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 243
    :cond_2
    iget p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeIdx:I

    if-nez p2, :cond_3

    .line 244
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->crsopenfList:Ljava/util/ArrayList;

    iput-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->oriList:Ljava/util/ArrayList;

    goto :goto_0

    .line 245
    :cond_3
    iget p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeIdx:I

    if-ne p2, v1, :cond_4

    .line 246
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->crsprogList:Ljava/util/ArrayList;

    iput-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->oriList:Ljava/util/ArrayList;

    goto :goto_0

    .line 247
    :cond_4
    iget p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeIdx:I

    if-ne p2, v0, :cond_5

    .line 248
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->crscentimeList:Ljava/util/ArrayList;

    iput-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->oriList:Ljava/util/ArrayList;

    .line 252
    :cond_5
    :goto_0
    :try_start_0
    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->oriList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "clweek"

    .line 253
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 254
    new-instance v6, Lorg/json/JSONArray;

    const-string v7, "clList"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 255
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 256
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 257
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 258
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 259
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v10, "time"

    .line 260
    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 271
    :cond_8
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->pageList:Ljava/util/List;

    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const p2, 0x7f08011b

    .line 272
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    const v4, 0x7f08012f

    .line 273
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v4, 0x8

    .line 274
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_9

    const-string v0, "\u7121\u8ab2\u7a0b"

    .line 276
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    .line 277
    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 280
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 288
    :cond_9
    new-instance p1, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;

    const v4, 0x7f0a00f0

    new-array v5, v0, [Ljava/lang/String;

    const-string v6, "title1"

    aput-object v6, v5, v3

    const-string v3, "title2"

    aput-object v3, v5, v1

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    move-object v0, p1

    move-object v1, p0

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 294
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801c9
        0x7f0801dc
    .end array-data
.end method

.method private showTypeDialog()V
    .locals 5

    .line 190
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 191
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    .line 192
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Ltw/edu/kmu/act/WacTeaFun3Activity$5;

    invoke-direct {v3, p0}, Ltw/edu/kmu/act/WacTeaFun3Activity$5;-><init>(Ltw/edu/kmu/act/WacTeaFun3Activity;)V

    .line 193
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f080122

    .line 203
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 204
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeKey:[Ljava/lang/String;

    const v4, 0x1090003

    invoke-direct {v2, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    new-instance v2, Ltw/edu/kmu/act/WacTeaFun3Activity$6;

    invoke-direct {v2, p0, v1}, Ltw/edu/kmu/act/WacTeaFun3Activity$6;-><init>(Ltw/edu/kmu/act/WacTeaFun3Activity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 220
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun3Activity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->bundle:Landroid/os/Bundle;

    .line 82
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 83
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c008a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->isEnglish:Z

    .line 84
    iget-boolean p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->isEnglish:Z

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeEnKey:[Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->typeKey:[Ljava/lang/String;

    :cond_0
    const p1, 0x7f08022e

    .line 88
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun3Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->myTitle:Landroid/widget/TextView;

    .line 89
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->myTitle:Landroid/widget/TextView;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->bundle:Landroid/os/Bundle;

    const-string v1, "semName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->progressDialog:Landroid/app/ProgressDialog;

    .line 93
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->progressDialog:Landroid/app/ProgressDialog;

    iget-boolean v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->isEnglish:Z

    if-eqz v0, :cond_1

    const-string v0, "Loading.."

    goto :goto_0

    :cond_1
    const-string v0, "\u8b80\u53d6\u4e2d..."

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->progressDialog:Landroid/app/ProgressDialog;

    iget-boolean v0, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->isEnglish:Z

    if-eqz v0, :cond_2

    const-string v0, "Please wait"

    goto :goto_1

    :cond_2
    const-string v0, "\u8acb\u7a0d\u5019"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 97
    new-instance p1, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;-><init>(Ltw/edu/kmu/act/WacTeaFun3Activity;Ltw/edu/kmu/act/WacTeaFun3Activity$1;)V

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/WacTeaFun3Activity$GetProgData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->createTab()V

    .line 101
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun3Activity;->initBtnFunction()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 481
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun3Activity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 475
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun3Activity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 469
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun3Activity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 444
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 445
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 446
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 447
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 448
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 449
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 450
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 451
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 452
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 453
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 455
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 461
    sget-object p2, Ltw/edu/kmu/act/WacTeaFun3Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseList Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method
