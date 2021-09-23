.class public Ltw/edu/kmu/view/SegmentedGroup;
.super Landroid/widget/RadioGroup;
.source "SegmentedGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;
    }
.end annotation


# instance fields
.field private mCheckedTextColor:I

.field private mCornerRadius:Ljava/lang/Float;

.field private mLayoutSelector:Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;

.field private mMarginDp:I

.field private mTintColor:I

.field private resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->mCheckedTextColor:I

    .line 31
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->resources:Landroid/content/res/Resources;

    .line 32
    iget-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->resources:Landroid/content/res/Resources;

    const v0, 0x7f05007d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->mTintColor:I

    .line 33
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06009e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->mMarginDp:I

    .line 34
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06009d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->mCornerRadius:Ljava/lang/Float;

    .line 35
    new-instance p1, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;

    iget-object v0, p0, Ltw/edu/kmu/view/SegmentedGroup;->mCornerRadius:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;-><init>(Ltw/edu/kmu/view/SegmentedGroup;F)V

    iput-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->mLayoutSelector:Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->mCheckedTextColor:I

    .line 69
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->resources:Landroid/content/res/Resources;

    .line 70
    iget-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->resources:Landroid/content/res/Resources;

    const v0, 0x7f05007d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->mTintColor:I

    .line 71
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06009e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->mMarginDp:I

    .line 72
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06009d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->mCornerRadius:Ljava/lang/Float;

    .line 73
    invoke-direct {p0, p2}, Ltw/edu/kmu/view/SegmentedGroup;->initAttrs(Landroid/util/AttributeSet;)V

    .line 74
    new-instance p1, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;

    iget-object p2, p0, Ltw/edu/kmu/view/SegmentedGroup;->mCornerRadius:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p1, p0, p2}, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;-><init>(Ltw/edu/kmu/view/SegmentedGroup;F)V

    iput-object p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->mLayoutSelector:Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;

    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 3

    .line 40
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Ltw/edu/kmu/act/R$styleable;->SegmentedGroup:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    :try_start_0
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 46
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ltw/edu/kmu/view/SegmentedGroup;->mMarginDp:I

    const/4 v0, 0x2

    .line 52
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/view/SegmentedGroup;->mCornerRadius:Ljava/lang/Float;

    const/4 v0, 0x3

    .line 56
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/SegmentedGroup;->mTintColor:I

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/SegmentedGroup;->mCheckedTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    throw v0
.end method

.method private updateBackground(Landroid/view/View;)V
    .locals 9

    .line 117
    iget-object v0, p0, Ltw/edu/kmu/view/SegmentedGroup;->mLayoutSelector:Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;

    invoke-virtual {v0}, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->getSelected()I

    move-result v0

    .line 118
    iget-object v1, p0, Ltw/edu/kmu/view/SegmentedGroup;->mLayoutSelector:Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;

    invoke-virtual {v1}, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->getUnselected()I

    move-result v1

    .line 120
    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x3

    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const/4 v7, 0x0

    const v8, 0x10100a7

    aput v8, v6, v7

    aput-object v6, v4, v7

    const/4 v6, 0x2

    new-array v8, v6, [I

    fill-array-data v8, :array_0

    aput-object v8, v4, v5

    new-array v8, v6, [I

    fill-array-data v8, :array_1

    aput-object v8, v4, v6

    new-array v3, v3, [I

    const v8, -0x777778

    aput v8, v3, v7

    iget v8, p0, Ltw/edu/kmu/view/SegmentedGroup;->mTintColor:I

    aput v8, v3, v5

    iget v8, p0, Ltw/edu/kmu/view/SegmentedGroup;->mCheckedTextColor:I

    aput v8, v3, v6

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 125
    move-object v3, p1

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 128
    iget-object v2, p0, Ltw/edu/kmu/view/SegmentedGroup;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    iget-object v2, p0, Ltw/edu/kmu/view/SegmentedGroup;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 130
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Ltw/edu/kmu/view/SegmentedGroup;->mTintColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 131
    iget v3, p0, Ltw/edu/kmu/view/SegmentedGroup;->mMarginDp:I

    iget v4, p0, Ltw/edu/kmu/view/SegmentedGroup;->mTintColor:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 132
    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Ltw/edu/kmu/view/SegmentedGroup;->mMarginDp:I

    iget v6, p0, Ltw/edu/kmu/view/SegmentedGroup;->mTintColor:I

    invoke-virtual {v3, v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 134
    iget-object v4, p0, Ltw/edu/kmu/view/SegmentedGroup;->mLayoutSelector:Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;

    invoke-virtual {v4, p1}, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->getChildRadii(Landroid/view/View;)[F

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 135
    iget-object v2, p0, Ltw/edu/kmu/view/SegmentedGroup;->mLayoutSelector:Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;

    invoke-virtual {v2, p1}, Ltw/edu/kmu/view/SegmentedGroup$LayoutSelector;->getChildRadii(Landroid/view/View;)[F

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 138
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 139
    new-array v3, v5, [I

    const v4, -0x10100a0

    aput v4, v3, v7

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 140
    new-array v1, v5, [I

    const v3, 0x10100a0

    aput v3, v1, v7

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a0
    .end array-data

    :array_1
    .array-data 4
        -0x10100a7
        0x10100a0
    .end array-data
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 79
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    .line 81
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .line 85
    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->mTintColor:I

    .line 86
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public setTintColor(II)V
    .locals 0

    .line 90
    iput p1, p0, Ltw/edu/kmu/view/SegmentedGroup;->mTintColor:I

    .line 91
    iput p2, p0, Ltw/edu/kmu/view/SegmentedGroup;->mCheckedTextColor:I

    .line 92
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public updateBackground()V
    .locals 8

    .line 96
    invoke-super {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 98
    invoke-virtual {p0, v2}, Ltw/edu/kmu/view/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 99
    invoke-direct {p0, v3}, Ltw/edu/kmu/view/SegmentedGroup;->updateBackground(Landroid/view/View;)V

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_0

    goto :goto_2

    .line 104
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup$LayoutParams;

    .line 105
    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    iget v6, v4, Landroid/widget/RadioGroup$LayoutParams;->width:I

    iget v7, v4, Landroid/widget/RadioGroup$LayoutParams;->height:I

    iget v4, v4, Landroid/widget/RadioGroup$LayoutParams;->weight:F

    invoke-direct {v5, v6, v7, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 107
    invoke-virtual {p0}, Ltw/edu/kmu/view/SegmentedGroup;->getOrientation()I

    move-result v4

    if-nez v4, :cond_1

    .line 108
    iget v4, p0, Ltw/edu/kmu/view/SegmentedGroup;->mMarginDp:I

    neg-int v4, v4

    invoke-virtual {v5, v1, v1, v4, v1}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 110
    :cond_1
    iget v4, p0, Ltw/edu/kmu/view/SegmentedGroup;->mMarginDp:I

    neg-int v4, v4

    invoke-virtual {v5, v1, v1, v1, v4}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 112
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
