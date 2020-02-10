.class public Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "IRSTAPoolTypeTreeViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IRSTAPoolTypeTreeViewAdapter"


# instance fields
.field private context:Ltw/edu/kmu/act/IRS4TAActivity;

.field private elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltw/edu/kmu/view/TreeElement;",
            ">;"
        }
    .end annotation
.end field

.field private elementsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltw/edu/kmu/view/TreeElement;",
            ">;"
        }
    .end annotation
.end field

.field private indentionBase:I

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/LayoutInflater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltw/edu/kmu/act/IRS4TAActivity;",
            "Ljava/util/ArrayList<",
            "Ltw/edu/kmu/view/TreeElement;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ltw/edu/kmu/view/TreeElement;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->context:Ltw/edu/kmu/act/IRS4TAActivity;

    .line 41
    iput-object p2, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->elements:Ljava/util/ArrayList;

    .line 42
    iput-object p3, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->elementsData:Ljava/util/ArrayList;

    .line 43
    iput-object p4, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const/16 p1, 0x32

    .line 44
    iput p1, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->indentionBase:I

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->startClickEvent(Ljava/lang/String;I)V

    return-void
.end method

.method private startClickEvent(Ljava/lang/String;I)V
    .locals 1

    .line 171
    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->context:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-virtual {v0, p1, p2}, Ltw/edu/kmu/act/IRS4TAActivity;->getPoolData(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ltw/edu/kmu/view/TreeElement;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->elements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getElementsData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ltw/edu/kmu/view/TreeElement;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->elementsData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 74
    new-instance p2, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;

    invoke-direct {p2}, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;-><init>()V

    .line 75
    iget-object p3, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0a0071

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0800c9

    .line 76
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    const v0, 0x7f0800a1

    .line 77
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    const v0, 0x7f0800a2

    .line 78
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;->contentText2:Landroid/widget/TextView;

    .line 79
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 83
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltw/edu/kmu/view/TreeElement;

    .line 84
    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getLevel()I

    move-result v1

    .line 85
    iget-object v2, p2, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    iget v3, p0, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;->indentionBase:I

    add-int/lit8 v1, v1, 0x1

    mul-int v3, v3, v1

    iget-object v1, p2, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v4, p2, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p2, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    .line 85
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 91
    iget-object v1, p2, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getContentText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p2, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object p2, p2, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$ViewHolder;->contentText2:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    new-instance p2, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;

    invoke-direct {p2, p0, p1}, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter$1;-><init>(Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;I)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method
