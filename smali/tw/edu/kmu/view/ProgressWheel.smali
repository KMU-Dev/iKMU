.class public Ltw/edu/kmu/view/ProgressWheel;
.super Landroid/view/View;
.source "ProgressWheel.java"


# instance fields
.field private barColor:I

.field private barLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barWidth:I

.field private circleBounds:Landroid/graphics/RectF;

.field private circleColor:I

.field private circlePaint:Landroid/graphics/Paint;

.field private circleRadius:I

.field private delayMillis:I

.field private fullRadius:I

.field isSpinning:Z

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field progress:I

.field private rectBounds:Landroid/graphics/RectF;

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private spinHandler:Landroid/os/Handler;

.field private spinSpeed:I

.field private splitText:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textPaint:Landroid/graphics/Paint;

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    .line 28
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->fullRadius:I

    const/16 v0, 0x50

    .line 29
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->circleRadius:I

    const/16 v0, 0x3c

    .line 30
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barLength:I

    const/16 v0, 0x14

    .line 31
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barWidth:I

    .line 32
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->rimWidth:I

    .line 33
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->textSize:I

    const/4 v0, 0x5

    .line 36
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingTop:I

    .line 37
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingBottom:I

    .line 38
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingLeft:I

    .line 39
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingRight:I

    const/high16 v0, -0x56000000

    .line 42
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barColor:I

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->circleColor:I

    const v1, -0x55222223

    .line 44
    iput v1, p0, Ltw/edu/kmu/view/ProgressWheel;->rimColor:I

    const/high16 v1, -0x1000000

    .line 45
    iput v1, p0, Ltw/edu/kmu/view/ProgressWheel;->textColor:I

    .line 48
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Ltw/edu/kmu/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Ltw/edu/kmu/view/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Ltw/edu/kmu/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Ltw/edu/kmu/view/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Ltw/edu/kmu/view/ProgressWheel;->rectBounds:Landroid/graphics/RectF;

    .line 56
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Ltw/edu/kmu/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/4 v1, 0x2

    .line 60
    iput v1, p0, Ltw/edu/kmu/view/ProgressWheel;->spinSpeed:I

    .line 62
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->delayMillis:I

    .line 63
    new-instance v1, Ltw/edu/kmu/view/ProgressWheel$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/view/ProgressWheel$1;-><init>(Ltw/edu/kmu/view/ProgressWheel;)V

    iput-object v1, p0, Ltw/edu/kmu/view/ProgressWheel;->spinHandler:Landroid/os/Handler;

    .line 81
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    .line 82
    iput-boolean v0, p0, Ltw/edu/kmu/view/ProgressWheel;->isSpinning:Z

    const-string v1, ""

    .line 85
    iput-object v1, p0, Ltw/edu/kmu/view/ProgressWheel;->text:Ljava/lang/String;

    .line 86
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->splitText:[Ljava/lang/String;

    .line 96
    sget-object v0, Ltw/edu/kmu/act/R$styleable;->ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Ltw/edu/kmu/view/ProgressWheel;->parseAttributes(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/view/ProgressWheel;)I
    .locals 0

    .line 25
    iget p0, p0, Ltw/edu/kmu/view/ProgressWheel;->spinSpeed:I

    return p0
.end method

.method static synthetic access$100(Ltw/edu/kmu/view/ProgressWheel;)I
    .locals 0

    .line 25
    iget p0, p0, Ltw/edu/kmu/view/ProgressWheel;->delayMillis:I

    return p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/view/ProgressWheel;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Ltw/edu/kmu/view/ProgressWheel;->spinHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 167
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barWidth:I

    int-to-float v0, v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barWidth:I

    .line 169
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->rimWidth:I

    int-to-float v0, v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->rimWidth:I

    .line 171
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->spinSpeed:I

    int-to-float v0, v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->spinSpeed:I

    .line 173
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->delayMillis:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->delayMillis:I

    .line 174
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->delayMillis:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 175
    iput v1, p0, Ltw/edu/kmu/view/ProgressWheel;->delayMillis:I

    .line 178
    :cond_0
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barColor:I

    const/4 v0, 0x1

    .line 180
    iget v1, p0, Ltw/edu/kmu/view/ProgressWheel;->barLength:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barLength:I

    const/16 v0, 0xb

    .line 182
    iget v1, p0, Ltw/edu/kmu/view/ProgressWheel;->textSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->textSize:I

    const/16 v0, 0xa

    .line 184
    iget v1, p0, Ltw/edu/kmu/view/ProgressWheel;->textColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->textColor:I

    const/16 v0, 0x9

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/ProgressWheel;->setText(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 188
    iget v1, p0, Ltw/edu/kmu/view/ProgressWheel;->rimColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->rimColor:I

    const/4 v0, 0x3

    .line 190
    iget v1, p0, Ltw/edu/kmu/view/ProgressWheel;->circleColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->circleColor:I

    return-void
.end method

.method private setupBounds()V
    .locals 6

    .line 143
    invoke-virtual {p0}, Ltw/edu/kmu/view/ProgressWheel;->getPaddingTop()I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingTop:I

    .line 144
    invoke-virtual {p0}, Ltw/edu/kmu/view/ProgressWheel;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingBottom:I

    .line 145
    invoke-virtual {p0}, Ltw/edu/kmu/view/ProgressWheel;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingLeft:I

    .line 146
    invoke-virtual {p0}, Ltw/edu/kmu/view/ProgressWheel;->getPaddingRight()I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingRight:I

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingTop:I

    int-to-float v2, v2

    .line 150
    invoke-virtual {p0}, Ltw/edu/kmu/view/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingRight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 151
    invoke-virtual {p0}, Ltw/edu/kmu/view/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v5, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingBottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->rectBounds:Landroid/graphics/RectF;

    .line 153
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingLeft:I

    iget v2, p0, Ltw/edu/kmu/view/ProgressWheel;->barWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingTop:I

    iget v3, p0, Ltw/edu/kmu/view/ProgressWheel;->barWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 155
    invoke-virtual {p0}, Ltw/edu/kmu/view/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Ltw/edu/kmu/view/ProgressWheel;->barWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 156
    invoke-virtual {p0}, Ltw/edu/kmu/view/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v5, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Ltw/edu/kmu/view/ProgressWheel;->barWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 158
    invoke-virtual {p0}, Ltw/edu/kmu/view/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Ltw/edu/kmu/view/ProgressWheel;->barWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->fullRadius:I

    .line 159
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->fullRadius:I

    iget v1, p0, Ltw/edu/kmu/view/ProgressWheel;->barWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->circleRadius:I

    return-void
.end method

.method private setupPaints()V
    .locals 3

    .line 119
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Ltw/edu/kmu/view/ProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v2, p0, Ltw/edu/kmu/view/ProgressWheel;->barWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v2, p0, Ltw/edu/kmu/view/ProgressWheel;->rimColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v2, p0, Ltw/edu/kmu/view/ProgressWheel;->rimWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    iget v2, p0, Ltw/edu/kmu/view/ProgressWheel;->circleColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Ltw/edu/kmu/view/ProgressWheel;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Ltw/edu/kmu/view/ProgressWheel;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .line 341
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barColor:I

    return v0
.end method

.method public getBarLength()I
    .locals 1

    .line 285
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barLength:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .line 293
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleColor()I
    .locals 1

    .line 349
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->circleColor:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .line 277
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->circleRadius:I

    return v0
.end method

.method public getDelayMillis()I
    .locals 1

    .line 398
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->delayMillis:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 317
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 325
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 333
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 309
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingTop:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 406
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    return v0
.end method

.method public getRimColor()I
    .locals 1

    .line 357
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimShader()Landroid/graphics/Shader;
    .locals 1

    .line 366
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    return-object v0
.end method

.method public getRimWidth()I
    .locals 1

    .line 390
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()I
    .locals 1

    .line 382
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->spinSpeed:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 374
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 301
    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->textSize:I

    return v0
.end method

.method public incrementProgress()V
    .locals 4

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Ltw/edu/kmu/view/ProgressWheel;->isSpinning:Z

    .line 257
    iget v1, p0, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    int-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltw/edu/kmu/view/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Ltw/edu/kmu/view/ProgressWheel;->spinHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 108
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 109
    invoke-direct {p0}, Ltw/edu/kmu/view/ProgressWheel;->setupBounds()V

    .line 110
    invoke-direct {p0}, Ltw/edu/kmu/view/ProgressWheel;->setupPaints()V

    .line 111
    invoke-virtual {p0}, Ltw/edu/kmu/view/ProgressWheel;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 198
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 200
    iget-object v1, p0, Ltw/edu/kmu/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Ltw/edu/kmu/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 202
    iget-boolean v0, p0, Ltw/edu/kmu/view/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v2, p0, Ltw/edu/kmu/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v3, v0

    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->barLength:I

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Ltw/edu/kmu/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v8, p0, Ltw/edu/kmu/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v9, -0x3d4c0000    # -90.0f

    iget v0, p0, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    int-to-float v10, v0

    const/4 v11, 0x0

    iget-object v12, p0, Ltw/edu/kmu/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 208
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Ltw/edu/kmu/view/ProgressWheel;->rimWidth:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingLeft:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Ltw/edu/kmu/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 209
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    iget v3, p0, Ltw/edu/kmu/view/ProgressWheel;->rimWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Ltw/edu/kmu/view/ProgressWheel;->circleRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Ltw/edu/kmu/view/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    .line 208
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 214
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->splitText:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    .line 215
    iget-object v6, p0, Ltw/edu/kmu/view/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    div-float/2addr v6, v1

    const-string v7, "\u6587\u5b57offset"

    .line 216
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Ltw/edu/kmu/view/ProgressWheel;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v7, v6

    .line 220
    invoke-virtual {p0}, Ltw/edu/kmu/view/ProgressWheel;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget v8, p0, Ltw/edu/kmu/view/ProgressWheel;->textSize:I

    mul-int v8, v8, v4

    add-int/2addr v6, v8

    iget-object v8, p0, Ltw/edu/kmu/view/ProgressWheel;->splitText:[Ljava/lang/String;

    array-length v8, v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v10

    iget v10, p0, Ltw/edu/kmu/view/ProgressWheel;->textSize:I

    div-int/lit8 v10, v10, 0x2

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-int v8, v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    iget-object v8, p0, Ltw/edu/kmu/view/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    .line 219
    invoke-virtual {p1, v5, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public resetCount()V
    .locals 1

    const/4 v0, 0x0

    .line 229
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    const-string v0, "0%"

    .line 230
    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Ltw/edu/kmu/view/ProgressWheel;->invalidate()V

    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    .line 345
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->barColor:I

    return-void
.end method

.method public setBarLength(I)V
    .locals 0

    .line 289
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->barLength:I

    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    .line 297
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->barWidth:I

    return-void
.end method

.method public setCircleColor(I)V
    .locals 0

    .line 353
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->circleColor:I

    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0

    .line 281
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->circleRadius:I

    return-void
.end method

.method public setDelayMillis(I)V
    .locals 0

    .line 402
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->delayMillis:I

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0

    .line 321
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingBottom:I

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .line 329
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingLeft:I

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0

    .line 337
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingRight:I

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0

    .line 313
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->paddingTop:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 410
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    return-void
.end method

.method public setRimColor(I)V
    .locals 0

    .line 361
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->rimColor:I

    return-void
.end method

.method public setRimShader(Landroid/graphics/Shader;)V
    .locals 1

    .line 370
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setRimWidth(I)V
    .locals 0

    .line 394
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->rimWidth:I

    return-void
.end method

.method public setSpinSpeed(I)V
    .locals 0

    .line 386
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->spinSpeed:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 272
    iput-object p1, p0, Ltw/edu/kmu/view/ProgressWheel;->text:Ljava/lang/String;

    .line 273
    iget-object p1, p0, Ltw/edu/kmu/view/ProgressWheel;->text:Ljava/lang/String;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/view/ProgressWheel;->splitText:[Ljava/lang/String;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 378
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->textColor:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 305
    iput p1, p0, Ltw/edu/kmu/view/ProgressWheel;->textSize:I

    return-void
.end method

.method public spin()V
    .locals 2

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Ltw/edu/kmu/view/ProgressWheel;->isSpinning:Z

    .line 249
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->spinHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopSpinning()V
    .locals 2

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Ltw/edu/kmu/view/ProgressWheel;->isSpinning:Z

    .line 239
    iput v0, p0, Ltw/edu/kmu/view/ProgressWheel;->progress:I

    .line 240
    iget-object v1, p0, Ltw/edu/kmu/view/ProgressWheel;->spinHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public updateWheel()V
    .locals 2

    .line 416
    iget-object v0, p0, Ltw/edu/kmu/view/ProgressWheel;->spinHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
