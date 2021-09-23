.class public final enum Lcom/estimote/sdk/Utils$Proximity;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Proximity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/estimote/sdk/Utils$Proximity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/estimote/sdk/Utils$Proximity;

.field public static final enum FAR:Lcom/estimote/sdk/Utils$Proximity;

.field public static final enum IMMEDIATE:Lcom/estimote/sdk/Utils$Proximity;

.field public static final enum NEAR:Lcom/estimote/sdk/Utils$Proximity;

.field public static final enum UNKNOWN:Lcom/estimote/sdk/Utils$Proximity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 131
    new-instance v0, Lcom/estimote/sdk/Utils$Proximity;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estimote/sdk/Utils$Proximity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estimote/sdk/Utils$Proximity;->UNKNOWN:Lcom/estimote/sdk/Utils$Proximity;

    .line 133
    new-instance v0, Lcom/estimote/sdk/Utils$Proximity;

    const-string v1, "IMMEDIATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/estimote/sdk/Utils$Proximity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estimote/sdk/Utils$Proximity;->IMMEDIATE:Lcom/estimote/sdk/Utils$Proximity;

    .line 135
    new-instance v0, Lcom/estimote/sdk/Utils$Proximity;

    const-string v1, "NEAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/estimote/sdk/Utils$Proximity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estimote/sdk/Utils$Proximity;->NEAR:Lcom/estimote/sdk/Utils$Proximity;

    .line 137
    new-instance v0, Lcom/estimote/sdk/Utils$Proximity;

    const-string v1, "FAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/estimote/sdk/Utils$Proximity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/estimote/sdk/Utils$Proximity;->FAR:Lcom/estimote/sdk/Utils$Proximity;

    const/4 v0, 0x4

    .line 129
    new-array v0, v0, [Lcom/estimote/sdk/Utils$Proximity;

    sget-object v1, Lcom/estimote/sdk/Utils$Proximity;->UNKNOWN:Lcom/estimote/sdk/Utils$Proximity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/estimote/sdk/Utils$Proximity;->IMMEDIATE:Lcom/estimote/sdk/Utils$Proximity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/estimote/sdk/Utils$Proximity;->NEAR:Lcom/estimote/sdk/Utils$Proximity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/estimote/sdk/Utils$Proximity;->FAR:Lcom/estimote/sdk/Utils$Proximity;

    aput-object v1, v0, v5

    sput-object v0, Lcom/estimote/sdk/Utils$Proximity;->$VALUES:[Lcom/estimote/sdk/Utils$Proximity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/estimote/sdk/Utils$Proximity;
    .locals 1

    .line 129
    const-class v0, Lcom/estimote/sdk/Utils$Proximity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/estimote/sdk/Utils$Proximity;

    return-object p0
.end method

.method public static values()[Lcom/estimote/sdk/Utils$Proximity;
    .locals 1

    .line 129
    sget-object v0, Lcom/estimote/sdk/Utils$Proximity;->$VALUES:[Lcom/estimote/sdk/Utils$Proximity;

    invoke-virtual {v0}, [Lcom/estimote/sdk/Utils$Proximity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estimote/sdk/Utils$Proximity;

    return-object v0
.end method
