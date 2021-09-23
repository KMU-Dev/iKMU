.class public Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "IRSTAStuListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IRSTAStuListViewAdapter"


# instance fields
.field private alertView:Landroid/widget/LinearLayout;

.field private context:Ltw/edu/kmu/act/IRS4TAActivity;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field protected display:Landroid/view/Display;

.field private inflater:Landroid/view/LayoutInflater;

.field private isEnglish:Z

.field private resource:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltw/edu/kmu/act/IRS4TAActivity;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 39
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const/4 p4, 0x0

    .line 35
    iput-boolean p4, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->isEnglish:Z

    .line 40
    iput-object p2, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->data:Ljava/util/List;

    .line 41
    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->context:Ltw/edu/kmu/act/IRS4TAActivity;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 43
    iput p3, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->resource:I

    const p2, 0x7f0c0088

    .line 44
    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/IRS4TAActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "en"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->isEnglish:Z

    const-string p2, "window"

    .line 45
    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/IRS4TAActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->display:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;)Ltw/edu/kmu/act/IRS4TAActivity;
    .locals 0

    .line 26
    iget-object p0, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->context:Ltw/edu/kmu/act/IRS4TAActivity;

    return-object p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 63
    iget-object p3, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 67
    iget-object p2, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v0, p0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;->resource:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    new-instance v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$1;)V

    const v1, 0x7f080051

    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;->btn1:Landroid/widget/Button;

    const v1, 0x7f08005b

    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;->btn2:Landroid/widget/Button;

    const v1, 0x7f0801d7

    .line 71
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    const v1, 0x7f080210

    .line 72
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;->title3:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;

    :goto_0
    const-string v1, "all"

    const-string v2, "seqno"

    .line 81
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;->btn1:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 84
    :cond_1
    iget-object v1, v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;->btn1:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    :goto_1
    iget-object v1, v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    const-string v3, "seqDesc"

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;->title3:Landroid/widget/TextView;

    const-string v3, "stuList"

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    const-string v4, "stuList"

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 92
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 93
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 96
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    const-string v2, "\n"

    .line 99
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v2, v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;->title3:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;->btn1:Landroid/widget/Button;

    new-instance v2, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$1;-><init>(Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$ViewHolder;->btn2:Landroid/widget/Button;

    new-instance v0, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$2;

    invoke-direct {v0, p0, p3}, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter$2;-><init>(Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;Ljava/util/HashMap;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
