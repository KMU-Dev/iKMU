.class public Ltw/edu/kmu/view/BadgeView;
.super Landroid/widget/TextView;
.source "BadgeView.java"


# static fields
.field private static final DEFAULT_BADGE_COLOR:I

.field private static final DEFAULT_CORNER_RADIUS_DIP:I = 0x8

.field private static final DEFAULT_LR_PADDING_DIP:I = 0x5

.field private static final DEFAULT_MARGIN_DIP:I = 0x5

.field private static final DEFAULT_POSITION:I = 0x2

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field public static final POSITION_BOTTOM_LEFT:I = 0x3

.field public static final POSITION_BOTTOM_RIGHT:I = 0x4

.field public static final POSITION_CENTER:I = 0x5

.field public static final POSITION_TOP_LEFT:I = 0x1

.field public static final POSITION_TOP_RIGHT:I = 0x2

.field private static fadeIn:Landroid/view/animation/Animation;

.field private static fadeOut:Landroid/view/animation/Animation;


# instance fields
.field private badgeBg:Landroid/graphics/drawable/ShapeDrawable;

.field private badgeColor:I

.field private badgeMarginH:I

.field private badgeMarginV:I

.field private badgePosition:I

.field private context:Landroid/content/Context;

.field private isShown:Z

.field private target:Landroid/view/View;

.field private targetTabIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#CCFF0000"

    .line 42
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ltw/edu/kmu/view/BadgeView;->DEFAULT_BADGE_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 63
    check-cast v0, Landroid/util/AttributeSet;

    const v1, 0x1010084

    invoke-direct {p0, p1, v0, v1}, Ltw/edu/kmu/view/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 67
    invoke-direct {p0, p1, p2, v0}, Ltw/edu/kmu/view/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 97
    invoke-direct/range {v0 .. v5}, Ltw/edu/kmu/view/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    invoke-direct {p0, p1, p4, p5}, Ltw/edu/kmu/view/BadgeView;->init(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    const v3, 0x1010084

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 79
    invoke-direct/range {v0 .. v5}, Ltw/edu/kmu/view/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TabWidget;I)V
    .locals 6

    const/4 v2, 0x0

    const v3, 0x1010084

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    .line 93
    invoke-direct/range {v0 .. v5}, Ltw/edu/kmu/view/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    return-void
.end method

.method private applyLayoutParams()V
    .locals 4

    .line 337
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 339
    iget v1, p0, Ltw/edu/kmu/view/BadgeView;->badgePosition:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x11

    .line 357
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 358
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x55

    .line 353
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 354
    iget v1, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginH:I

    iget v3, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x53

    .line 349
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 350
    iget v1, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginH:I

    iget v3, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x35

    .line 345
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 346
    iget v1, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginV:I

    iget v3, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginH:I

    invoke-virtual {v0, v2, v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x33

    .line 341
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 342
    iget v1, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginH:I

    iget v3, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 364
    :goto_0
    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyTo(Landroid/view/View;)V
    .locals 5

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 144
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Ltw/edu/kmu/view/BadgeView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 146
    instance-of v3, p1, Landroid/widget/TabWidget;

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    .line 149
    check-cast p1, Landroid/widget/TabWidget;

    iget v0, p0, Ltw/edu/kmu/view/BadgeView;->targetTabIndex:I

    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object p1

    .line 150
    iput-object p1, p0, Ltw/edu/kmu/view/BadgeView;->target:Landroid/view/View;

    .line 152
    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {p0, v4}, Ltw/edu/kmu/view/BadgeView;->setVisibility(I)V

    .line 156
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 161
    :cond_0
    check-cast v1, Landroid/view/ViewGroup;

    .line 162
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 164
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 165
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 169
    invoke-virtual {p0, v4}, Ltw/edu/kmu/view/BadgeView;->setVisibility(I)V

    .line 170
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    :goto_0
    return-void
.end method

.method private dipToPixels(I)I
    .locals 2

    .line 461
    invoke-virtual {p0}, Ltw/edu/kmu/view/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 462
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;
    .locals 3

    const/16 v0, 0x8

    .line 324
    invoke-direct {p0, v0}, Ltw/edu/kmu/view/BadgeView;->dipToPixels(I)I

    move-result v1

    .line 325
    new-array v0, v0, [F

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 327
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 328
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 329
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Ltw/edu/kmu/view/BadgeView;->badgeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private hide(ZLandroid/view/animation/Animation;)V
    .locals 1

    const/16 v0, 0x8

    .line 274
    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/BadgeView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p0, p2}, Ltw/edu/kmu/view/BadgeView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 p1, 0x0

    .line 278
    iput-boolean p1, p0, Ltw/edu/kmu/view/BadgeView;->isShown:Z

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/view/View;I)V
    .locals 3

    .line 107
    iput-object p1, p0, Ltw/edu/kmu/view/BadgeView;->context:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Ltw/edu/kmu/view/BadgeView;->target:Landroid/view/View;

    .line 109
    iput p3, p0, Ltw/edu/kmu/view/BadgeView;->targetTabIndex:I

    const/4 p1, 0x2

    .line 112
    iput p1, p0, Ltw/edu/kmu/view/BadgeView;->badgePosition:I

    const/4 p1, 0x5

    .line 113
    invoke-direct {p0, p1}, Ltw/edu/kmu/view/BadgeView;->dipToPixels(I)I

    move-result p2

    iput p2, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginH:I

    .line 114
    iget p2, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginH:I

    iput p2, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginV:I

    .line 115
    sget p2, Ltw/edu/kmu/view/BadgeView;->DEFAULT_BADGE_COLOR:I

    iput p2, p0, Ltw/edu/kmu/view/BadgeView;->badgeColor:I

    .line 117
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, p2}, Ltw/edu/kmu/view/BadgeView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    invoke-direct {p0, p1}, Ltw/edu/kmu/view/BadgeView;->dipToPixels(I)I

    move-result p1

    const/4 p2, 0x0

    .line 119
    invoke-virtual {p0, p1, p2, p1, p2}, Ltw/edu/kmu/view/BadgeView;->setPadding(IIII)V

    const/4 p1, -0x1

    .line 120
    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/BadgeView;->setTextColor(I)V

    .line 122
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p1, v0, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object p1, Ltw/edu/kmu/view/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    .line 123
    sget-object p1, Ltw/edu/kmu/view/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 124
    sget-object p1, Ltw/edu/kmu/view/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 126
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, p3, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object p1, Ltw/edu/kmu/view/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    .line 127
    sget-object p1, Ltw/edu/kmu/view/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 128
    sget-object p1, Ltw/edu/kmu/view/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 130
    iput-boolean p2, p0, Ltw/edu/kmu/view/BadgeView;->isShown:Z

    .line 132
    iget-object p1, p0, Ltw/edu/kmu/view/BadgeView;->target:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Ltw/edu/kmu/view/BadgeView;->target:Landroid/view/View;

    invoke-direct {p0, p1}, Ltw/edu/kmu/view/BadgeView;->applyTo(Landroid/view/View;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/view/BadgeView;->show()V

    :goto_0
    return-void
.end method

.method private show(ZLandroid/view/animation/Animation;)V
    .locals 1

    .line 258
    invoke-virtual {p0}, Ltw/edu/kmu/view/BadgeView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Ltw/edu/kmu/view/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    .line 260
    invoke-direct {p0}, Ltw/edu/kmu/view/BadgeView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/view/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    .line 262
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/view/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/BadgeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_1
    invoke-direct {p0}, Ltw/edu/kmu/view/BadgeView;->applyLayoutParams()V

    if-eqz p1, :cond_2

    .line 267
    invoke-virtual {p0, p2}, Ltw/edu/kmu/view/BadgeView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    const/4 p1, 0x0

    .line 269
    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/BadgeView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 270
    iput-boolean p1, p0, Ltw/edu/kmu/view/BadgeView;->isShown:Z

    return-void
.end method

.method private toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3

    .line 282
    iget-boolean v0, p0, Ltw/edu/kmu/view/BadgeView;->isShown:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 283
    :goto_0
    invoke-direct {p0, v1, p3}, Ltw/edu/kmu/view/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 285
    :goto_1
    invoke-direct {p0, v1, p2}, Ltw/edu/kmu/view/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public decrement(I)I
    .locals 0

    neg-int p1, p1

    .line 319
    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/BadgeView;->increment(I)I

    move-result p1

    return p1
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    .line 447
    iget v0, p0, Ltw/edu/kmu/view/BadgeView;->badgeColor:I

    return v0
.end method

.method public getBadgePosition()I
    .locals 1

    .line 392
    iget v0, p0, Ltw/edu/kmu/view/BadgeView;->badgePosition:I

    return v0
.end method

.method public getHorizontalBadgeMargin()I
    .locals 1

    .line 410
    iget v0, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginH:I

    return v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .line 373
    iget-object v0, p0, Ltw/edu/kmu/view/BadgeView;->target:Landroid/view/View;

    return-object v0
.end method

.method public getVerticalBadgeMargin()I
    .locals 1

    .line 418
    iget v0, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginV:I

    return v0
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0, v0, v1}, Ltw/edu/kmu/view/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public hide(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    .line 227
    invoke-direct {p0, v0, p1}, Ltw/edu/kmu/view/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public hide(Z)V
    .locals 1

    .line 218
    sget-object v0, Ltw/edu/kmu/view/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Ltw/edu/kmu/view/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public increment(I)I
    .locals 2

    .line 296
    invoke-virtual {p0}, Ltw/edu/kmu/view/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 300
    :try_start_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    :catch_0
    :cond_0
    add-int/2addr v1, p1

    .line 308
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/BadgeView;->setText(Ljava/lang/CharSequence;)V

    return v1
.end method

.method public isShown()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Ltw/edu/kmu/view/BadgeView;->isShown:Z

    return v0
.end method

.method public setBadgeBackgroundColor(I)V
    .locals 0

    .line 456
    iput p1, p0, Ltw/edu/kmu/view/BadgeView;->badgeColor:I

    .line 457
    invoke-direct {p0}, Ltw/edu/kmu/view/BadgeView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/view/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public setBadgeMargin(I)V
    .locals 0

    .line 427
    iput p1, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginH:I

    .line 428
    iput p1, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginV:I

    return-void
.end method

.method public setBadgeMargin(II)V
    .locals 0

    .line 438
    iput p1, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginH:I

    .line 439
    iput p2, p0, Ltw/edu/kmu/view/BadgeView;->badgeMarginV:I

    return-void
.end method

.method public setBadgePosition(I)V
    .locals 0

    .line 402
    iput p1, p0, Ltw/edu/kmu/view/BadgeView;->badgePosition:I

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 183
    invoke-direct {p0, v0, v1}, Ltw/edu/kmu/view/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public show(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    .line 201
    invoke-direct {p0, v0, p1}, Ltw/edu/kmu/view/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public show(Z)V
    .locals 1

    .line 192
    sget-object v0, Ltw/edu/kmu/view/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Ltw/edu/kmu/view/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public toggle()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, v1, v0, v0}, Ltw/edu/kmu/view/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public toggle(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    .line 254
    invoke-direct {p0, v0, p1, p2}, Ltw/edu/kmu/view/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public toggle(Z)V
    .locals 2

    .line 244
    sget-object v0, Ltw/edu/kmu/view/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    sget-object v1, Ltw/edu/kmu/view/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0, v1}, Ltw/edu/kmu/view/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method
