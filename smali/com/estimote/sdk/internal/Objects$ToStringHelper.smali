.class public final Lcom/estimote/sdk/internal/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/internal/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private holderHead:Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

.field private holderTail:Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/estimote/sdk/internal/Objects$1;)V

    iput-object v0, p0, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->holderHead:Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

    .line 179
    iget-object v0, p0, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->holderHead:Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->holderTail:Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->omitNullValues:Z

    .line 186
    invoke-static {p1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/estimote/sdk/internal/Objects$1;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;
    .locals 2

    .line 385
    new-instance v0, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/estimote/sdk/internal/Objects$1;)V

    .line 386
    iget-object v1, p0, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->holderTail:Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;->next:Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->holderTail:Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 1

    .line 391
    invoke-direct {p0}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder()Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 392
    iput-object p1, v0, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 1

    .line 397
    invoke-direct {p0}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder()Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 398
    iput-object p2, v0, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 399
    invoke-static {p1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;C)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 228
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;D)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 238
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;F)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 248
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;I)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 258
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;J)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 268
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Z)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 218
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(C)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 302
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(D)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 314
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(F)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 326
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(I)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 338
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(J)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 350
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 278
    invoke-direct {p0, p1}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(Z)Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 0

    .line 290
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/estimote/sdk/internal/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public omitNullValues()Lcom/estimote/sdk/internal/Objects$ToStringHelper;
    .locals 1

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->omitNullValues:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 365
    iget-boolean v0, p0, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->omitNullValues:Z

    const-string v1, ""

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    iget-object v3, p0, Lcom/estimote/sdk/internal/Objects$ToStringHelper;->holderHead:Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

    iget-object v3, v3, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;->next:Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

    :goto_0
    if-eqz v3, :cond_3

    if-eqz v0, :cond_0

    .line 371
    iget-object v4, v3, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 372
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 375
    iget-object v4, v3, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 376
    iget-object v4, v3, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    :cond_1
    iget-object v4, v3, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    :cond_2
    iget-object v3, v3, Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;->next:Lcom/estimote/sdk/internal/Objects$ToStringHelper$ValueHolder;

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d

    .line 381
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
