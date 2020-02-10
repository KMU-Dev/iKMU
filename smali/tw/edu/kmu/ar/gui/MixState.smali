.class public Ltw/edu/kmu/ar/gui/MixState;
.super Ljava/lang/Object;
.source "MixState.java"

# interfaces
.implements Lorg/mixare/lib/MixStateInterface;


# static fields
.field public static DONE:I = 0x3

.field public static NOT_STARTED:I = 0x0

.field public static PROCESSING:I = 0x1

.field public static READY:I = 0x2


# instance fields
.field private curBearing:F

.field private curPitch:F

.field private detailsView:Z

.field downloadId:Ljava/lang/String;

.field nextLStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget v0, Ltw/edu/kmu/ar/gui/MixState;->NOT_STARTED:I

    iput v0, p0, Ltw/edu/kmu/ar/gui/MixState;->nextLStatus:I

    return-void
.end method


# virtual methods
.method public calcPitchBearing(Lorg/mixare/lib/render/Matrix;)V
    .locals 5

    .line 75
    new-instance v0, Lorg/mixare/lib/render/MixVector;

    invoke-direct {v0}, Lorg/mixare/lib/render/MixVector;-><init>()V

    .line 76
    invoke-virtual {p1}, Lorg/mixare/lib/render/Matrix;->transpose()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v1, v2, v2}, Lorg/mixare/lib/render/MixVector;->set(FFF)V

    .line 78
    invoke-virtual {v0, p1}, Lorg/mixare/lib/render/MixVector;->prod(Lorg/mixare/lib/render/Matrix;)V

    .line 79
    iget v3, v0, Lorg/mixare/lib/render/MixVector;->x:F

    iget v4, v0, Lorg/mixare/lib/render/MixVector;->z:F

    invoke-static {v2, v2, v3, v4}, Lorg/mixare/lib/MixUtils;->getAngle(FFFF)F

    move-result v3

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    float-to-int v3, v3

    rem-int/lit16 v3, v3, 0x168

    int-to-float v3, v3

    iput v3, p0, Ltw/edu/kmu/ar/gui/MixState;->curBearing:F

    .line 81
    invoke-virtual {p1}, Lorg/mixare/lib/render/Matrix;->transpose()V

    .line 82
    invoke-virtual {v0, v2, v1, v2}, Lorg/mixare/lib/render/MixVector;->set(FFF)V

    .line 83
    invoke-virtual {v0, p1}, Lorg/mixare/lib/render/MixVector;->prod(Lorg/mixare/lib/render/Matrix;)V

    .line 84
    iget p1, v0, Lorg/mixare/lib/render/MixVector;->y:F

    iget v0, v0, Lorg/mixare/lib/render/MixVector;->z:F

    invoke-static {v2, v2, p1, v0}, Lorg/mixare/lib/MixUtils;->getAngle(FFFF)F

    move-result p1

    neg-float p1, p1

    iput p1, p0, Ltw/edu/kmu/ar/gui/MixState;->curPitch:F

    return-void
.end method

.method public getCurBearing()F
    .locals 1

    .line 59
    iget v0, p0, Ltw/edu/kmu/ar/gui/MixState;->curBearing:F

    return v0
.end method

.method public getCurPitch()F
    .locals 1

    .line 63
    iget v0, p0, Ltw/edu/kmu/ar/gui/MixState;->curPitch:F

    return v0
.end method

.method public handleEvent(Lorg/mixare/lib/MixContextInterface;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const-string v1, "webpage"

    .line 46
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    :try_start_0
    invoke-static {p2}, Lorg/mixare/lib/MixUtils;->parseAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 49
    iput-boolean v0, p0, Ltw/edu/kmu/ar/gui/MixState;->detailsView:Z

    .line 50
    invoke-interface {p1, p2}, Lorg/mixare/lib/MixContextInterface;->loadMixViewWebPage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public isDetailsView()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Ltw/edu/kmu/ar/gui/MixState;->detailsView:Z

    return v0
.end method

.method public setDetailsView(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Ltw/edu/kmu/ar/gui/MixState;->detailsView:Z

    return-void
.end method
