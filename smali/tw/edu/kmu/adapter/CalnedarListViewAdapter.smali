.class public Ltw/edu/kmu/adapter/CalnedarListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "CalnedarListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/CalnedarListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CalnedarListViewAdapter"


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
    invoke-direct/range {v0 .. v10}, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;III)V

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
    invoke-direct/range {v0 .. v11}, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;IIILandroid/os/Handler;)V

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
    iput v0, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->noImageID:I

    .line 57
    iput-object p2, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->data:Ljava/util/List;

    .line 58
    iput-object p5, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->to:[I

    .line 59
    iput-object p4, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->from:[Ljava/lang/String;

    .line 60
    iput-object p6, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->res:Landroid/content/res/Resources;

    .line 61
    iput-object p1, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->context:Landroid/content/Context;

    .line 62
    iput-object p7, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->packageName:Ljava/lang/String;

    .line 63
    iput p8, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->limitSizeW:I

    .line 64
    iput p9, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->limitSizeH:I

    .line 65
    iput p10, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->limitType:I

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 67
    iput p3, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->resource:I

    .line 69
    iput-object p11, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->parentHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 85
    iget-object p3, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string p3, "status"

    .line 86
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 87
    iget-object p3, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0c008a

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_0

    .line 90
    iget-object p2, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v0, p0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;->resource:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    new-instance v0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter$ViewHolder;

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/adapter/CalnedarListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/CalnedarListViewAdapter;Ltw/edu/kmu/adapter/CalnedarListViewAdapter$1;)V

    const v1, 0x7f0801c9

    .line 92
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter$ViewHolder;

    :goto_0
    const-string v1, "en"

    .line 101
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "etitle"

    :goto_1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title"

    goto :goto_1

    .line 102
    :goto_2
    iget-object v1, v0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "atypeName"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p1, v0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method
