.class Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;
.super Ljava/lang/Object;
.source "SegmentedGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/view/SegmentedGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutSelector"
.end annotation


# instance fields
.field private final SELECTED_LAYOUT:I

.field private final UNSELECTED_LAYOUT:I

.field private child:I

.field private children:I

.field private r:F

.field private final r1:F

.field private final rBot:[F

.field private final rDefault:[F

.field private final rLeft:[F

.field private final rMiddle:[F

.field private final rRight:[F

.field private final rTop:[F

.field private radii:[F

.field final synthetic this$0:Ltw/edu/kmu/view/SegmentedGroup;


# direct methods
.method public constructor <init>(Ltw/edu/kmu/view/SegmentedGroup;F)V
    .locals 9

    .line 175
    iput-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->this$0:Ltw/edu/kmu/view/SegmentedGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f07015d

    .line 161
    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->SELECTED_LAYOUT:I

    const p1, 0x7f07015e

    .line 162
    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->UNSELECTED_LAYOUT:I

    .line 165
    iget-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->this$0:Ltw/edu/kmu/view/SegmentedGroup;

    .line 166
    invoke-virtual {p1}, Ltw/edu/kmu/view/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const v1, 0x3dcccccd    # 0.1f

    .line 165
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    const/4 p1, -0x1

    .line 176
    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->children:I

    .line 177
    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->child:I

    .line 178
    iput p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    const/16 p1, 0x8

    .line 179
    new-array p2, p1, [F

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    const/4 v2, 0x0

    aput v1, p2, v2

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v0

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    const/4 v3, 0x2

    aput v1, p2, v3

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    const/4 v4, 0x3

    aput v1, p2, v4

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    const/4 v5, 0x4

    aput v1, p2, v5

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    const/4 v6, 0x5

    aput v1, p2, v6

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    const/4 v7, 0x6

    aput v1, p2, v7

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    const/4 v8, 0x7

    aput v1, p2, v8

    iput-object p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->rLeft:[F

    .line 180
    new-array p2, p1, [F

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v2

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v0

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v3

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v4

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v5

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v6

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v7

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v8

    iput-object p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->rRight:[F

    .line 181
    new-array p2, p1, [F

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v2

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v0

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v3

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v4

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v5

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v6

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v7

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v8

    iput-object p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->rMiddle:[F

    .line 182
    new-array p2, p1, [F

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v2

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v0

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v3

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v4

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v5

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v6

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v7

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v8

    iput-object p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->rDefault:[F

    .line 183
    new-array p2, p1, [F

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v2

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v0

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v3

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput v1, p2, v4

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v5

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v6

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v7

    iget v1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput v1, p2, v8

    iput-object p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->rTop:[F

    .line 184
    new-array p1, p1, [F

    iget p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput p2, p1, v2

    iget p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput p2, p1, v0

    iget p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput p2, p1, v3

    iget p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r1:F

    aput p2, p1, v4

    iget p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput p2, p1, v5

    iget p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput p2, p1, v6

    iget p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput p2, p1, v7

    iget p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->r:F

    aput p2, p1, v8

    iput-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->rBot:[F

    return-void
.end method

.method private getChildIndex(Landroid/view/View;)I
    .locals 1

    .line 192
    iget-object v0, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->this$0:Ltw/edu/kmu/view/SegmentedGroup;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/view/SegmentedGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method private getChildren()I
    .locals 1

    .line 188
    iget-object v0, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->this$0:Ltw/edu/kmu/view/SegmentedGroup;

    invoke-virtual {v0}, Ltw/edu/kmu/view/SegmentedGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method private setChildRadii(II)V
    .locals 1

    .line 198
    iget v0, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->children:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->child:I

    if-ne v0, p2, :cond_0

    return-void

    .line 202
    :cond_0
    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->children:I

    .line 203
    iput p2, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->child:I

    .line 206
    iget p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->children:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 207
    iget-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->rDefault:[F

    iput-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->radii:[F

    goto :goto_2

    .line 208
    :cond_1
    iget p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->child:I

    if-nez p1, :cond_3

    .line 209
    iget-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->this$0:Ltw/edu/kmu/view/SegmentedGroup;

    invoke-virtual {p1}, Ltw/edu/kmu/view/SegmentedGroup;->getOrientation()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->rLeft:[F

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->rTop:[F

    :goto_0
    iput-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->radii:[F

    goto :goto_2

    .line 210
    :cond_3
    iget p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->child:I

    iget v0, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->children:I

    sub-int/2addr v0, p2

    if-ne p1, v0, :cond_5

    .line 211
    iget-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->this$0:Ltw/edu/kmu/view/SegmentedGroup;

    invoke-virtual {p1}, Ltw/edu/kmu/view/SegmentedGroup;->getOrientation()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->rRight:[F

    goto :goto_1

    :cond_4
    iget-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->rBot:[F

    :goto_1
    iput-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->radii:[F

    goto :goto_2

    .line 213
    :cond_5
    iget-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->rMiddle:[F

    iput-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->radii:[F

    :goto_2
    return-void
.end method


# virtual methods
.method public getChildRadii(Landroid/view/View;)[F
    .locals 1

    .line 229
    invoke-direct {p0}, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->getChildren()I

    move-result v0

    .line 230
    invoke-direct {p0, p1}, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->getChildIndex(Landroid/view/View;)I

    move-result p1

    .line 231
    invoke-direct {p0, v0, p1}, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->setChildRadii(II)V

    .line 232
    iget-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->radii:[F

    return-object p1
.end method

.method public getSelected()I
    .locals 1

    const v0, 0x7f07015d

    return v0
.end method

.method public getUnselected()I
    .locals 1

    const v0, 0x7f07015e

    return v0
.end method
