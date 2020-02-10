.class public final enum Landroid/support/v8/renderscript/RenderScript$Priority;
.super Ljava/lang/Enum;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v8/renderscript/RenderScript$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v8/renderscript/RenderScript$Priority;

.field public static final enum LOW:Landroid/support/v8/renderscript/RenderScript$Priority;

.field public static final enum NORMAL:Landroid/support/v8/renderscript/RenderScript$Priority;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1218
    new-instance v0, Landroid/support/v8/renderscript/RenderScript$Priority;

    const-string v1, "LOW"

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v8/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/RenderScript$Priority;->LOW:Landroid/support/v8/renderscript/RenderScript$Priority;

    .line 1219
    new-instance v0, Landroid/support/v8/renderscript/RenderScript$Priority;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    const/4 v4, -0x4

    invoke-direct {v0, v1, v3, v4}, Landroid/support/v8/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/RenderScript$Priority;->NORMAL:Landroid/support/v8/renderscript/RenderScript$Priority;

    const/4 v0, 0x2

    .line 1217
    new-array v0, v0, [Landroid/support/v8/renderscript/RenderScript$Priority;

    sget-object v1, Landroid/support/v8/renderscript/RenderScript$Priority;->LOW:Landroid/support/v8/renderscript/RenderScript$Priority;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/RenderScript$Priority;->NORMAL:Landroid/support/v8/renderscript/RenderScript$Priority;

    aput-object v1, v0, v3

    sput-object v0, Landroid/support/v8/renderscript/RenderScript$Priority;->$VALUES:[Landroid/support/v8/renderscript/RenderScript$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1223
    iput p3, p0, Landroid/support/v8/renderscript/RenderScript$Priority;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/RenderScript$Priority;
    .locals 1

    .line 1217
    const-class v0, Landroid/support/v8/renderscript/RenderScript$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v8/renderscript/RenderScript$Priority;

    return-object p0
.end method

.method public static values()[Landroid/support/v8/renderscript/RenderScript$Priority;
    .locals 1

    .line 1217
    sget-object v0, Landroid/support/v8/renderscript/RenderScript$Priority;->$VALUES:[Landroid/support/v8/renderscript/RenderScript$Priority;

    invoke-virtual {v0}, [Landroid/support/v8/renderscript/RenderScript$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v8/renderscript/RenderScript$Priority;

    return-object v0
.end method
