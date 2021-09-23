.class public Ltw/edu/kmu/adapter/ClassListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "ClassListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassListViewAdapter"


# instance fields
.field private context:Landroid/content/Context;

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

.field private from:[Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field private limitSizeH:I

.field private limitSizeW:I

.field private limitType:I

.field private noImageID:I

.field private packageName:Ljava/lang/String;

.field private parentHandler:Landroid/os/Handler;

.field private res:Landroid/content/res/Resources;

.field private resource:I

.field private to:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p8

    move/from16 v10, p9

    .line 45
    invoke-direct/range {v0 .. v10}, Ltw/edu/kmu/adapter/ClassListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;III)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 50
    invoke-direct/range {v0 .. v11}, Ltw/edu/kmu/adapter/ClassListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;IIILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;IIILandroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "III",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const v0, 0x7f07013b

    .line 40
    iput v0, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->noImageID:I

    .line 57
    iput-object p2, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->data:Ljava/util/List;

    .line 58
    iput-object p5, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->to:[I

    .line 59
    iput-object p4, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->from:[Ljava/lang/String;

    .line 60
    iput-object p6, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->res:Landroid/content/res/Resources;

    .line 61
    iput-object p1, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->context:Landroid/content/Context;

    .line 62
    iput-object p7, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->packageName:Ljava/lang/String;

    .line 63
    iput p8, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->limitSizeW:I

    .line 64
    iput p9, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->limitSizeH:I

    .line 65
    iput p10, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->limitType:I

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 67
    iput p3, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->resource:I

    .line 69
    iput-object p11, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->parentHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 85
    iget-object p3, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string p3, "status"

    .line 86
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, "estatus"

    .line 87
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 90
    iget-object p2, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->resource:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    new-instance v1, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;

    invoke-direct {v1, p0, v2}, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/ClassListViewAdapter;Ltw/edu/kmu/adapter/ClassListViewAdapter$1;)V

    const v2, 0x7f0801d7

    .line 92
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    const v2, 0x7f0801ea

    .line 93
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;->title2:Landroid/widget/TextView;

    const v2, 0x7f080107

    .line 94
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 95
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;

    .line 101
    :goto_0
    iget-object v2, v1, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, v1, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object p1, v1, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;->title2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p1, "\u53ef\u501f"

    .line 105
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "\u53ef\u9810\u501f"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 108
    :cond_1
    iget-object p1, v1, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f070117

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 106
    :cond_2
    :goto_1
    iget-object p1, v1, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f070187

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :goto_2
    iget-object p1, p0, Ltw/edu/kmu/adapter/ClassListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0c0088

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 114
    iget-object v1, v1, Ltw/edu/kmu/adapter/ClassListViewAdapter$ViewHolder;->title2:Landroid/widget/TextView;

    const-string v2, "en"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object p3, v0

    :cond_3
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
