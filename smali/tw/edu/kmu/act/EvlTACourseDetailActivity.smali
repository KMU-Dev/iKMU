.class public Ltw/edu/kmu/act/EvlTACourseDetailActivity;
.super Landroid/app/Activity;
.source "EvlTACourseDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;,
        Ltw/edu/kmu/act/EvlTACourseDetailActivity$ViewDialog;,
        Ltw/edu/kmu/act/EvlTACourseDetailActivity$SamplePagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EvlTACourseDetailActivity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private contentList:Ljava/util/ArrayList;
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

.field private header_View:Landroid/view/View;

.field private isEnglish:Z

.field listAdapter:Ltw/edu/kmu/adapter/Evl4TACourseDetailExpandableListAdapter;

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

.field private queryType:Ljava/lang/String;

.field private serverResource:Ltw/edu/kmu/resource/ServerResource;

.field private teafList:Ljava/util/ArrayList;
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

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "1"

    .line 48
    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->queryType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->isEnglish:Z

    return-void
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Landroid/os/Bundle;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Ltw/edu/kmu/resource/ServerResource;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    return-object p0
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->teafList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1302(Ltw/edu/kmu/act/EvlTACourseDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->teafList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->contentList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1402(Ltw/edu/kmu/act/EvlTACourseDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->contentList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->pageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Landroid/widget/ListView;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$502(Ltw/edu/kmu/act/EvlTACourseDetailActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 43
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->lv:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$602(Ltw/edu/kmu/act/EvlTACourseDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->queryType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->showList()V

    return-void
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->prepareListData()V

    return-void
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private createTab()V
    .locals 4

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->pageList:Ljava/util/List;

    const v0, 0x7f0801bd

    .line 110
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    .line 111
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    iget-boolean v2, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->isEnglish:Z

    if-eqz v2, :cond_0

    const-string v2, "Co-teacher"

    goto :goto_0

    :cond_0
    const-string v2, "\u5354\u540c\u6388\u8ab2\u6559\u5e2b"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 112
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    iget-boolean v2, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->isEnglish:Z

    if-eqz v2, :cond_1

    const-string v2, "Course evaluation"

    goto :goto_1

    :cond_1
    const-string v2, "\u8ab2\u7a0b\u8a55\u91cf\u5167\u5bb9"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 113
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 115
    iget-object v3, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->pageList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v3, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->pageList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080125

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->lv:Landroid/widget/ListView;

    const v0, 0x7f080146

    .line 118
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 119
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Ltw/edu/kmu/act/EvlTACourseDetailActivity$SamplePagerAdapter;

    invoke-direct {v1, p0, v2}, Ltw/edu/kmu/act/EvlTACourseDetailActivity$SamplePagerAdapter;-><init>(Ltw/edu/kmu/act/EvlTACourseDetailActivity;Ltw/edu/kmu/act/EvlTACourseDetailActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 120
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->initListener()V

    return-void
.end method

.method private getLayoutId()I
    .locals 1

    const v0, 0x7f0a005e

    return v0
.end method

.method private initListener()V
    .locals 3

    .line 125
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Ltw/edu/kmu/act/EvlTACourseDetailActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity$1;-><init>(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 173
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v1, v2}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private prepareListData()V
    .locals 6

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->listDataHeader:Ljava/util/List;

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->listDataChild:Ljava/util/HashMap;

    .line 368
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->teafList:Ljava/util/ArrayList;

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

    .line 369
    iget-object v4, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v5, "semCode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v3, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->listDataHeader:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v2, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->listDataChild:Ljava/util/HashMap;

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
    .locals 9

    .line 209
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->queryType:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 211
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->contentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    iget-object v3, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 216
    iget-object v3, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, ""

    const-string v5, "openQ1"

    .line 218
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "openQ1"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-string v5, "openQ2"

    .line 222
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "openQ2"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v5, "openQ3"

    .line 226
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "openQ3"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    const-string v5, "title3"

    .line 230
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 233
    :cond_4
    new-instance v0, Ltw/edu/kmu/adapter/Evl4TAStatDetailListViewAdapter;

    iget-object v5, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->contentList:Ljava/util/ArrayList;

    const v6, 0x7f0a0060

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const-string v4, "title11"

    aput-object v4, v7, v2

    const-string v4, "title12"

    const/4 v8, 0x1

    aput-object v4, v7, v8

    new-array v8, v3, [I

    fill-array-data v8, :array_0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Ltw/edu/kmu/adapter/Evl4TAStatDetailListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 241
    iget-object v3, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->lv:Landroid/widget/ListView;

    iget-object v4, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->header_View:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 242
    iget-object v3, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->lv:Landroid/widget/ListView;

    iget-object v4, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->header_View:Landroid/view/View;

    invoke-virtual {v3, v4, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 243
    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/EvlTACourseDetailActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity$2;-><init>(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    .line 256
    :cond_6
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->pageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v3, 0x7f08012d

    .line 257
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->expListView:Landroid/widget/ExpandableListView;

    .line 258
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->expListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 259
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->prepareListData()V

    .line 260
    new-instance v0, Ltw/edu/kmu/adapter/Evl4TACourseDetailExpandableListAdapter;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->listDataHeader:Ljava/util/List;

    iget-object v3, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->listDataChild:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1, v3}, Ltw/edu/kmu/adapter/Evl4TACourseDetailExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->listAdapter:Ltw/edu/kmu/adapter/Evl4TACourseDetailExpandableListAdapter;

    .line 261
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->expListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->listAdapter:Ltw/edu/kmu/adapter/Evl4TACourseDetailExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 263
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->lv:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->expListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801d9
        0x7f0801dd
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 65
    sget-object v0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->bundle:Landroid/os/Bundle;

    .line 73
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ltw/edu/kmu/resource/ServerResource;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    const-string p1, "window"

    .line 75
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->display:Landroid/view/Display;

    .line 77
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0088

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->isEnglish:Z

    .line 79
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 80
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-boolean v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->isEnglish:Z

    if-eqz v0, :cond_0

    const-string v0, "Loading.."

    goto :goto_0

    :cond_0
    const-string v0, "\u8b80\u53d6\u4e2d..."

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-boolean v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->isEnglish:Z

    if-eqz v0, :cond_1

    const-string v0, "Please wait"

    goto :goto_1

    :cond_1
    const-string v0, "\u8acb\u7a0d\u5019"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 84
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    const p1, 0x7f08023b

    .line 86
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->myTitle:Landroid/widget/TextView;

    .line 87
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->myTitle:Landroid/widget/TextView;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "chinsesCo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0a005a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->header_View:Landroid/view/View;

    .line 91
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->header_View:Landroid/view/View;

    const v1, 0x7f0801ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 92
    iget-boolean v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->isEnglish:Z

    if-eqz v1, :cond_2

    const-string v1, "Average"

    goto :goto_2

    :cond_2
    const-string v1, "\u5e73\u5747"

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->header_View:Landroid/view/View;

    const v1, 0x7f080210

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 95
    iget-boolean v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->isEnglish:Z

    if-eqz v1, :cond_3

    const-string v1, "Open questions"

    goto :goto_3

    :cond_3
    const-string v1, "\u958b\u653e\u554f\u984c"

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance p1, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;

    invoke-direct {p1, p0, v2}, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;-><init>(Ltw/edu/kmu/act/EvlTACourseDetailActivity;Ltw/edu/kmu/act/EvlTACourseDetailActivity$1;)V

    .line 98
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->createTab()V

    .line 102
    sget-object p1, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 455
    sget-object v0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
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

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 429
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 430
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 431
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 432
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 433
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 434
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 435
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 437
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 439
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 445
    sget-object p2, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->TAG:Ljava/lang/String;

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

.method public showScoreView(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 273
    new-instance v0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$ViewDialog;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)V

    const/16 v1, 0xa

    .line 274
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 275
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const-string v3, "layout_inflater"

    .line 276
    invoke-virtual {p0, v3}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f0a005f

    const/4 v5, 0x0

    .line 277
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0801d6

    .line 278
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 279
    iget-boolean v5, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->isEnglish:Z

    if-eqz v5, :cond_0

    const-string v5, "Score"

    goto :goto_0

    :cond_0
    const-string v5, "\u5404\u984c\u5206\u6578"

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 281
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "score"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 284
    aget v7, v2, v4

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 285
    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v8, ""

    .line 286
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v5, ""

    .line 287
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, ""

    .line 288
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "#00FFFFFF"

    .line 289
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const-string v5, "#00FFFFFF"

    .line 290
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_2

    .line 292
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move v4, v6

    goto :goto_1

    .line 297
    :cond_2
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 298
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    invoke-virtual {p1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 301
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 304
    new-instance p1, Landroid/widget/Button;

    invoke-direct {p1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700f3

    .line 305
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 306
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {p0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    .line 307
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 308
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f080051

    .line 311
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 312
    iget-boolean v3, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->isEnglish:Z

    if-eqz v3, :cond_3

    const-string v3, "Submit"

    goto :goto_3

    :cond_3
    const-string v3, "\u78ba\u5b9a"

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 313
    new-instance v3, Ltw/edu/kmu/act/EvlTACourseDetailActivity$3;

    invoke-direct {v3, p0, v0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity$3;-><init>(Ltw/edu/kmu/act/EvlTACourseDetailActivity;Ltw/edu/kmu/act/EvlTACourseDetailActivity$ViewDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "00"

    .line 321
    invoke-virtual {v0, p0, v1, v2}, Ltw/edu/kmu/act/EvlTACourseDetailActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 322
    new-instance v1, Ltw/edu/kmu/act/EvlTACourseDetailActivity$4;

    invoke-direct {v1, p0, v0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity$4;-><init>(Ltw/edu/kmu/act/EvlTACourseDetailActivity;Ltw/edu/kmu/act/EvlTACourseDetailActivity$ViewDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801d7
        0x7f0801ea
        0x7f080210
        0x7f08021c
        0x7f080226
        0x7f08022b
        0x7f080230
        0x7f080232
        0x7f080233
        0x7f0801d8
    .end array-data

    :array_1
    .array-data 4
        0x7f0800b5
        0x7f0800b7
        0x7f0800b8
        0x7f0800b9
        0x7f0800ba
        0x7f0800bb
        0x7f0800bc
        0x7f0800bd
        0x7f0800be
        0x7f0800b6
    .end array-data
.end method
