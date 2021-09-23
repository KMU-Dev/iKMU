.class public Ltw/edu/kmu/act/GalleryGridViewActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "GalleryGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/GalleryGridViewActivity$ItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryGridViewActivity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private gridView:Landroid/widget/GridView;

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

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Ltw/edu/kmu/act/GalleryGridViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/GalleryGridViewActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryGridViewActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/GalleryGridViewActivity;)Landroid/os/Bundle;
    .locals 0

    .line 22
    iget-object p0, p0, Ltw/edu/kmu/act/GalleryGridViewActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method private initBtn()V
    .locals 4

    const v0, 0x7f08003f

    .line 93
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/GalleryGridViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 95
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {p0, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 96
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "close"

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v1, Ltw/edu/kmu/act/GalleryGridViewActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/GalleryGridViewActivity$1;-><init>(Ltw/edu/kmu/act/GalleryGridViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a006e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Ltw/edu/kmu/act/GalleryGridViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryGridViewActivity;->bundle:Landroid/os/Bundle;

    .line 40
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryGridViewActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "serverDataList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Ltw/edu/kmu/act/GalleryGridViewActivity;->serverDataList:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0}, Ltw/edu/kmu/act/GalleryGridViewActivity;->setAdapter()V

    .line 44
    invoke-direct {p0}, Ltw/edu/kmu/act/GalleryGridViewActivity;->initBtn()V

    return-void
.end method

.method public setAdapter()V
    .locals 9

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f0800f9

    .line 54
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/GalleryGridViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Ltw/edu/kmu/act/GalleryGridViewActivity;->gridView:Landroid/widget/GridView;

    .line 56
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryGridViewActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 57
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryGridViewActivity;->currentLocale:Ljava/lang/String;

    const-string v5, "en"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ename"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_0
    const-string v2, "name"

    goto :goto_1

    :goto_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "pic"

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_1
    iget-object v7, p0, Ltw/edu/kmu/act/GalleryGridViewActivity;->gridView:Landroid/widget/GridView;

    new-instance v8, Ltw/edu/kmu/adapter/PictureListAdapter;

    iget-object v2, p0, Ltw/edu/kmu/act/GalleryGridViewActivity;->gridView:Landroid/widget/GridView;

    iget-boolean v5, p0, Ltw/edu/kmu/act/GalleryGridViewActivity;->isPad:Z

    iget-object v6, p0, Ltw/edu/kmu/act/GalleryGridViewActivity;->display:Landroid/view/Display;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ltw/edu/kmu/adapter/PictureListAdapter;-><init>(Landroid/content/Context;Landroid/widget/GridView;Ljava/util/List;Ljava/util/List;ZLandroid/view/Display;)V

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryGridViewActivity;->gridView:Landroid/widget/GridView;

    new-instance v1, Ltw/edu/kmu/act/GalleryGridViewActivity$ItemClickListener;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/GalleryGridViewActivity$ItemClickListener;-><init>(Ltw/edu/kmu/act/GalleryGridViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
