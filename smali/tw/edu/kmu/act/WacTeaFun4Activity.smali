.class public Ltw/edu/kmu/act/WacTeaFun4Activity;
.super Landroid/app/Activity;
.source "WacTeaFun4Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;,
        Ltw/edu/kmu/act/WacTeaFun4Activity$SamplePagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WacTeaFun4Activity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private courList:Ljava/util/ArrayList;
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

.field protected display:Landroid/view/Display;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private hrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isEnglish:Z

.field private lv:Landroid/widget/ListView;

.field private mTablayout:Landroid/support/design/widget/TabLayout;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private myTitle:Landroid/widget/TextView;

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

.field private serverResource:Ltw/edu/kmu/resource/ServerResource;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    return-void
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/WacTeaFun4Activity;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->courList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1002(Ltw/edu/kmu/act/WacTeaFun4Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->courList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/WacTeaFun4Activity;)Ljava/util/HashMap;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/WacTeaFun4Activity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->showTab1Info()V

    return-void
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/WacTeaFun4Activity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->showList()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun4Activity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/WacTeaFun4Activity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/WacTeaFun4Activity;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->pageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/WacTeaFun4Activity;)Landroid/widget/ListView;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/WacTeaFun4Activity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/WacTeaFun4Activity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/WacTeaFun4Activity;)Landroid/os/Bundle;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/WacTeaFun4Activity;)Ltw/edu/kmu/resource/ServerResource;
    .locals 0

    .line 36
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    return-object p0
.end method

.method private createTab()V
    .locals 4

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->pageList:Ljava/util/List;

    const v0, 0x7f0801af

    .line 93
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    .line 94
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    iget-boolean v2, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    if-eqz v2, :cond_0

    const-string v2, "Hours"

    goto :goto_0

    :cond_0
    const-string v2, "\u6642\u6578\u7d71\u8a08"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 95
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    iget-boolean v2, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    if-eqz v2, :cond_1

    const-string v2, "Course list"

    goto :goto_1

    :cond_1
    const-string v2, "\u8ab2\u7a0b\u6e05\u55ae"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 96
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 97
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0a00ea

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    iget-object v3, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->pageList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->pageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f08011b

    .line 100
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->lv:Landroid/widget/ListView;

    const v0, 0x7f08013c

    .line 101
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 102
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Ltw/edu/kmu/act/WacTeaFun4Activity$SamplePagerAdapter;

    invoke-direct {v1, p0, v2}, Ltw/edu/kmu/act/WacTeaFun4Activity$SamplePagerAdapter;-><init>(Ltw/edu/kmu/act/WacTeaFun4Activity;Ltw/edu/kmu/act/WacTeaFun4Activity$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 103
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->initListener()V

    return-void
.end method

.method private getLayoutId()I
    .locals 1

    const v0, 0x7f0a005c

    return v0
.end method

.method private initListener()V
    .locals 3

    .line 108
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Ltw/edu/kmu/act/WacTeaFun4Activity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaFun4Activity$1;-><init>(Ltw/edu/kmu/act/WacTeaFun4Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 132
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v1, v2}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private showList()V
    .locals 8

    .line 277
    new-instance v6, Ltw/edu/kmu/adapter/WacTAhrListViewAdapter;

    iget-object v2, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->courList:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v1, "title11"

    const/4 v7, 0x0

    aput-object v1, v4, v7

    const-string v1, "title12"

    const/4 v3, 0x1

    aput-object v1, v4, v3

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    const v3, 0x7f0a00eb

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ltw/edu/kmu/adapter/WacTAhrListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 282
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 283
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x777778

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 284
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 286
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/WacTeaFun4Activity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaFun4Activity$2;-><init>(Ltw/edu/kmu/act/WacTeaFun4Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801cb
        0x7f0801cf
    .end array-data
.end method

.method private showTab1Info()V
    .locals 7

    const v0, 0x7f0801c9

    .line 167
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    iget-boolean v1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    if-eqz v1, :cond_0

    const-string v1, "Weekly/Total hours"

    goto :goto_0

    :cond_0
    const-string v1, "\u9031\u6642\u6578/\u7e3d\u6642\u6578"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801cc

    .line 170
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801cd

    .line 171
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0801ce

    .line 172
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 173
    iget-boolean v3, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    if-eqz v3, :cond_1

    const-string v3, "Weekly weighted"

    goto :goto_1

    :cond_1
    const-string v3, "\u52a0\u6b0a\u9031\u6642\u6578"

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-boolean v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    if-eqz v0, :cond_2

    const-string v0, "Total weighted"

    goto :goto_2

    :cond_2
    const-string v0, "\u52a0\u6b0a\u7e3d\u6642\u6578"

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-boolean v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    if-eqz v0, :cond_3

    const-string v0, "Unweighted"

    goto :goto_3

    :cond_3
    const-string v0, "\u672a\u52a0\u6b0a\u7e3d\u6642\u6578"

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801d4

    .line 177
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801d5

    .line 178
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    iget-boolean v2, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    if-eqz v2, :cond_4

    const-string v2, "Including other working hours"

    goto :goto_4

    :cond_4
    const-string v2, "\u542b\u5176\u4ed6\u9031\u6642\u6578"

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-boolean v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    if-eqz v0, :cond_5

    const-string v0, "Total hours"

    goto :goto_5

    :cond_5
    const-string v0, "\u542b\u5176\u4ed6\u7e3d\u6642\u6578"

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801cf

    .line 183
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08020f

    .line 184
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080219

    .line 185
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 186
    iget-boolean v3, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    if-eqz v3, :cond_6

    const-string v3, "Weighted hours of each category"

    goto :goto_6

    :cond_6
    const-string v3, "\u52a0\u6b0a\u5404\u985e\u5225\u6642\u6578"

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-boolean v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    if-eqz v0, :cond_7

    const-string v0, "Other (No.2 is not included in the calculation)"

    goto :goto_7

    :cond_7
    const-string v0, "\u5176\u4ed6(\u81e82\u4e0d\u5217\u5165\u8a08\u7b97)"

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-boolean v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    if-eqz v0, :cond_8

    const-string v0, "Decreased hours"

    goto :goto_8

    :cond_8
    const-string v0, "\u6e1b\u6388\u6642\u6578"

    :goto_8
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801d0

    .line 190
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801d1

    .line 191
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0801d2

    .line 192
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    .line 193
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    iget-object v4, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v5, "hrw"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v4, "hrtot"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v1, "hrtotnw"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801d7

    .line 200
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801d8

    .line 201
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 202
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v2, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v4, "hrwcz"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v2, "hrtotcz"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801e3

    .line 207
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801e4

    .line 208
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0801e5

    .line 209
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0801e6

    .line 210
    invoke-virtual {p0, v4}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 211
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v5, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v6, "hr1"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v5, "hr2"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v1, "hr3"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v1, "hr4"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801ed

    .line 220
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801ee

    .line 221
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0801ef

    .line 222
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0801f0

    .line 223
    invoke-virtual {p0, v4}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 224
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v5, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v6, "hr5"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v5, "hr6"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v1, "hr7"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v1, "hr8"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801f6

    .line 233
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801f7

    .line 234
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0801f8

    .line 235
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0801f9

    .line 236
    invoke-virtual {p0, v4}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 237
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    iget-object v5, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v6, "hr9"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v5, "hra"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v1, "hrb"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v1, "hrc"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801fe

    .line 246
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v2, "hrd"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080208

    .line 250
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080209

    .line 251
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f08020a

    .line 252
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 253
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object v4, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v5, "hrc1"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v4, "hrc2"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v1, "hrcz"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080214

    .line 260
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080215

    .line 261
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080216

    .line 262
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f080217

    .line 263
    invoke-virtual {p0, v4}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 264
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v3, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v5, "hrr1"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v3, "hrr2"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v1, "hrr3"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->hrMap:Ljava/util/HashMap;

    const-string v1, "hrrt"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun4Activity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->bundle:Landroid/os/Bundle;

    .line 63
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ltw/edu/kmu/resource/ServerResource;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    const-string p1, "window"

    .line 65
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->display:Landroid/view/Display;

    .line 67
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c008a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    .line 69
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->progressDialog:Landroid/app/ProgressDialog;

    .line 70
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->progressDialog:Landroid/app/ProgressDialog;

    iget-boolean v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    if-eqz v0, :cond_0

    const-string v0, "Loading.."

    goto :goto_0

    :cond_0
    const-string v0, "\u8b80\u53d6\u4e2d..."

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->progressDialog:Landroid/app/ProgressDialog;

    iget-boolean v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->isEnglish:Z

    if-eqz v0, :cond_1

    const-string v0, "Please wait"

    goto :goto_1

    :cond_1
    const-string v0, "\u8acb\u7a0d\u5019"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 74
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    const p1, 0x7f08022e

    .line 76
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->myTitle:Landroid/widget/TextView;

    .line 78
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->myTitle:Landroid/widget/TextView;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity;->bundle:Landroid/os/Bundle;

    const-string v2, "semName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->createTab()V

    .line 82
    new-instance p1, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;-><init>(Ltw/edu/kmu/act/WacTeaFun4Activity;Ltw/edu/kmu/act/WacTeaFun4Activity$1;)V

    .line 83
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    sget-object p1, Ltw/edu/kmu/act/WacTeaFun4Activity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 426
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun4Activity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

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

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 400
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 401
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 402
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 403
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 404
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 405
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 406
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 408
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 410
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 416
    sget-object p2, Ltw/edu/kmu/act/WacTeaFun4Activity;->TAG:Ljava/lang/String;

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
