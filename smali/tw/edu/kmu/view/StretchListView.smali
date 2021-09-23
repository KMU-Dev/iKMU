.class public Ltw/edu/kmu/view/StretchListView;
.super Landroid/widget/ListView;
.source "StretchListView.java"


# static fields
.field private static final MAX_Y_OVERSCROLL_DISTANCE:I = 0xc8


# instance fields
.field private mContext:Landroid/content/Context;

.field private maxYOverscrollDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Ltw/edu/kmu/view/StretchListView;->mContext:Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Ltw/edu/kmu/view/StretchListView;->initBounceListView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object p1, p0, Ltw/edu/kmu/view/StretchListView;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ltw/edu/kmu/view/StretchListView;->initBounceListView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object p1, p0, Ltw/edu/kmu/view/StretchListView;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ltw/edu/kmu/view/StretchListView;->initBounceListView()V

    return-void
.end method

.method private initBounceListView()V
    .locals 2

    .line 44
    iget-object v0, p0, Ltw/edu/kmu/view/StretchListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 45
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43480000    # 200.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 47
    iput v0, p0, Ltw/edu/kmu/view/StretchListView;->maxYOverscrollDistance:I

    return-void
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 12

    const-string v0, "\u5f48\u6027List"

    const-string v1, "\u62c9\u4f38\u4e2d"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 60
    iget v10, v0, Ltw/edu/kmu/view/StretchListView;->maxYOverscrollDistance:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v11, p9

    invoke-super/range {v2 .. v11}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v1

    return v1
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
