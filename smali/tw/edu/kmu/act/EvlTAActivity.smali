.class public Ltw/edu/kmu/act/EvlTAActivity;
.super Landroid/app/Activity;
.source "EvlTAActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/EvlTAActivity$GetStatData;,
        Ltw/edu/kmu/act/EvlTAActivity$SamplePagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EvlTAActivity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private conoList:Ljava/util/ArrayList;
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

.field expListView:Landroid/widget/ExpandableListView;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private isEnglish:Z

.field listAdapter:Ltw/edu/kmu/adapter/ExpandableListAdapter;

.field listDataChild:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field listDataHeader:Ljava/util/List;
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

.field private queryClass:Ljava/lang/String;

.field private queryType:Ljava/lang/String;

.field private serverResource:Ltw/edu/kmu/resource/ServerResource;

.field private statList:Ljava/util/ArrayList;
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

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "1"

    .line 40
    iput-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->queryType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->isEnglish:Z

    return-void
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/EvlTAActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 35
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTAActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/EvlTAActivity;)Landroid/os/Bundle;
    .locals 0

    .line 35
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTAActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/EvlTAActivity;)Ltw/edu/kmu/resource/ServerResource;
    .locals 0

    .line 35
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTAActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    return-object p0
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/EvlTAActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTAActivity;->statList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1302(Ltw/edu/kmu/act/EvlTAActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->statList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Ltw/edu/kmu/act/EvlTAActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTAActivity;->conoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1402(Ltw/edu/kmu/act/EvlTAActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->conoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Ltw/edu/kmu/act/EvlTAActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/EvlTAActivity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 35
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTAActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/EvlTAActivity;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTAActivity;->pageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/EvlTAActivity;)Landroid/widget/ListView;
    .locals 0

    .line 35
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTAActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$502(Ltw/edu/kmu/act/EvlTAActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 35
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->lv:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$602(Ltw/edu/kmu/act/EvlTAActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->queryType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/EvlTAActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTAActivity;->showList()V

    return-void
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/EvlTAActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTAActivity;->prepareListData()V

    return-void
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/EvlTAActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 35
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTAActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private createTab()V
    .locals 4

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->pageList:Ljava/util/List;

    const v0, 0x7f0801af

    .line 98
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlTAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    .line 99
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTAActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    iget-boolean v2, p0, Ltw/edu/kmu/act/EvlTAActivity;->isEnglish:Z

    if-eqz v2, :cond_0

    const-string v2, "Statistics"

    goto :goto_0

    :cond_0
    const-string v2, "\u8a55\u91cf\u7d71\u8a08"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 100
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTAActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    iget-boolean v2, p0, Ltw/edu/kmu/act/EvlTAActivity;->isEnglish:Z

    if-eqz v2, :cond_1

    const-string v2, "Course list"

    goto :goto_1

    :cond_1
    const-string v2, "\u8ab2\u7a0b\u6e05\u55ae"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 101
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 102
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 103
    iget-object v3, p0, Ltw/edu/kmu/act/EvlTAActivity;->pageList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v3, p0, Ltw/edu/kmu/act/EvlTAActivity;->pageList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08011b

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->lv:Landroid/widget/ListView;

    const v0, 0x7f08013c

    .line 106
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlTAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 107
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Ltw/edu/kmu/act/EvlTAActivity$SamplePagerAdapter;

    invoke-direct {v1, p0, v2}, Ltw/edu/kmu/act/EvlTAActivity$SamplePagerAdapter;-><init>(Ltw/edu/kmu/act/EvlTAActivity;Ltw/edu/kmu/act/EvlTAActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 108
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTAActivity;->initListener()V

    return-void
.end method

.method private getLayoutId()I
    .locals 1

    const v0, 0x7f0a005c

    return v0
.end method

.method private initListener()V
    .locals 3

    .line 113
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Ltw/edu/kmu/act/EvlTAActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlTAActivity$1;-><init>(Ltw/edu/kmu/act/EvlTAActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 166
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Ltw/edu/kmu/act/EvlTAActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v1, v2}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private prepareListData()V
    .locals 6

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->listDataHeader:Ljava/util/List;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->listDataChild:Ljava/util/HashMap;

    .line 264
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->conoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "semCode"

    .line 265
    iget-object v4, p0, Ltw/edu/kmu/act/EvlTAActivity;->bundle:Landroid/os/Bundle;

    const-string v5, "semCode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v3, p0, Ltw/edu/kmu/act/EvlTAActivity;->listDataHeader:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v2, p0, Ltw/edu/kmu/act/EvlTAActivity;->listDataChild:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showList()V
    .locals 7

    .line 202
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->queryType:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title1"

    const-string v2, ""

    .line 206
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title2"

    .line 207
    iget-boolean v2, p0, Ltw/edu/kmu/act/EvlTAActivity;->isEnglish:Z

    if-eqz v2, :cond_0

    const-string v2, "Total"

    goto :goto_0

    :cond_0
    const-string v2, "\u5168\u90e8\u8a55\u91cf"

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title3"

    .line 208
    iget-boolean v2, p0, Ltw/edu/kmu/act/EvlTAActivity;->isEnglish:Z

    if-eqz v2, :cond_1

    const-string v2, "Authentic"

    goto :goto_1

    :cond_1
    const-string v2, "\u6709\u6548\u8a55\u91cf"

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->statList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "title1"

    .line 212
    iget-boolean v4, p0, Ltw/edu/kmu/act/EvlTAActivity;->isEnglish:Z

    if-eqz v4, :cond_2

    const-string v4, "stKeyEng"

    goto :goto_3

    :cond_2
    const-string v4, "stKey"

    :goto_3
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "title2"

    const-string v4, "stValAll"

    .line 213
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "title3"

    const-string v4, "stValValid"

    .line 214
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 217
    :cond_3
    new-instance v0, Ltw/edu/kmu/adapter/Evl4TAListViewAdapter;

    const v4, 0x7f0a0060

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "title11"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    const-string v6, "title12"

    aput-object v6, v5, v2

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/adapter/Evl4TAListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 243
    :goto_4
    iget-object v1, p0, Ltw/edu/kmu/act/EvlTAActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/EvlTAActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlTAActivity$2;-><init>(Ltw/edu/kmu/act/EvlTAActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801cb
        0x7f0801cf
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    sget-object v0, Ltw/edu/kmu/act/EvlTAActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTAActivity;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTAActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTAActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->bundle:Landroid/os/Bundle;

    .line 64
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->bundle:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "queryClass"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->queryClass:Ljava/lang/String;

    .line 68
    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTAActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ltw/edu/kmu/resource/ServerResource;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    const-string p1, "window"

    .line 70
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTAActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->display:Landroid/view/Display;

    .line 72
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c008a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->isEnglish:Z

    .line 74
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 75
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-boolean v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->isEnglish:Z

    if-eqz v0, :cond_1

    const-string v0, "Loading.."

    goto :goto_0

    :cond_1
    const-string v0, "\u8b80\u53d6\u4e2d..."

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-boolean v0, p0, Ltw/edu/kmu/act/EvlTAActivity;->isEnglish:Z

    if-eqz v0, :cond_2

    const-string v0, "Please wait"

    goto :goto_1

    :cond_2
    const-string v0, "\u8acb\u7a0d\u5019"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTAActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    const p1, 0x7f08022e

    .line 81
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTAActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->myTitle:Landroid/widget/TextView;

    .line 83
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTAActivity;->myTitle:Landroid/widget/TextView;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTAActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "semName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance p1, Ltw/edu/kmu/act/EvlTAActivity$GetStatData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/EvlTAActivity$GetStatData;-><init>(Ltw/edu/kmu/act/EvlTAActivity;Ltw/edu/kmu/act/EvlTAActivity$1;)V

    .line 86
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/EvlTAActivity$GetStatData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTAActivity;->createTab()V

    .line 90
    sget-object p1, Ltw/edu/kmu/act/EvlTAActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 398
    sget-object v0, Ltw/edu/kmu/act/EvlTAActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
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

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 372
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 373
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 374
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 375
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 376
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 378
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 380
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 382
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 388
    sget-object p2, Ltw/edu/kmu/act/EvlTAActivity;->TAG:Ljava/lang/String;

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
