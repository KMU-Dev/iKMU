.class public Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "CurrentClassTreeViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CurrentClassTreeViewAdapter"


# instance fields
.field private context:Ltw/edu/kmu/act/MyKMUActivity;

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

.method public constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/LayoutInflater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltw/edu/kmu/act/MyKMUActivity;",
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

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->context:Ltw/edu/kmu/act/MyKMUActivity;

    .line 39
    iput-object p2, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->elements:Ljava/util/ArrayList;

    .line 40
    iput-object p3, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->elementsData:Ljava/util/ArrayList;

    .line 41
    iput-object p4, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const/16 p1, 0x32

    .line 42
    iput p1, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->indentionBase:I

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p5}, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->startClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 179
    iget-object v0, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->context:Ltw/edu/kmu/act/MyKMUActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ltw/edu/kmu/act/MyKMUActivity;->startIRSEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->elements:Ljava/util/ArrayList;

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

    .line 46
    iget-object v0, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->elements:Ljava/util/ArrayList;

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

    .line 50
    iget-object v0, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->elementsData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->elements:Ljava/util/ArrayList;

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

    .line 72
    new-instance p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;

    invoke-direct {p2}, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;-><init>()V

    .line 73
    iget-object p3, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0a0073

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0800d4

    .line 74
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    const v0, 0x7f0800ac

    .line 75
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    const v0, 0x7f0800ad

    .line 76
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->contentText2:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 81
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltw/edu/kmu/view/TreeElement;

    .line 82
    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getLevel()I

    move-result v1

    .line 83
    iget-object v2, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    iget v3, p0, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;->indentionBase:I

    add-int/lit8 v1, v1, 0x1

    mul-int v3, v3, v1

    iget-object v1, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v4, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    .line 83
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 89
    iget-object v1, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getContentText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getLevel()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getClassRoom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->contentText2:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v1, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->contentText2:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getClassRoom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6559\u5ba4\u5c08\u5c6c\u8ab2\u7a0b\uff0c\u8acb\u958b\u555f\u85cd\u82bd\u89e3\u9396)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p2, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->contentText2:Landroid/widget/TextView;

    const-string v0, "#CB731A"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 96
    :cond_1
    iget-object v0, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->contentText2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object p2, p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$ViewHolder;->contentText2:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_1
    new-instance p2, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;

    invoke-direct {p2, p0, p1}, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter$1;-><init>(Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;I)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method
