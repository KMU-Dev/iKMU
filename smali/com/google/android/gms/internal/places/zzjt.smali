.class public final Lcom/google/android/gms/internal/places/zzjt;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/google/android/gms/internal/places/zzhq;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/places/zzhq;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final zzxt:Lcom/google/android/gms/internal/places/zzhq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/places/zzhq;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzjt;->zzxt:Lcom/google/android/gms/internal/places/zzhq;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/places/zzjt;)Lcom/google/android/gms/internal/places/zzhq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/places/zzjt;->zzxt:Lcom/google/android/gms/internal/places/zzhq;

    return-object p0
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzjt;->zzxt:Lcom/google/android/gms/internal/places/zzhq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/places/zzhq;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getRaw(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzjt;->zzxt:Lcom/google/android/gms/internal/places/zzhq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/places/zzhq;->getRaw(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/places/zzjv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/places/zzjv;-><init>(Lcom/google/android/gms/internal/places/zzjt;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/places/zzju;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/places/zzju;-><init>(Lcom/google/android/gms/internal/places/zzjt;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzjt;->zzxt:Lcom/google/android/gms/internal/places/zzhq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/places/zzhq;->size()I

    move-result v0

    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/places/zzfr;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzek()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzjt;->zzxt:Lcom/google/android/gms/internal/places/zzhq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/places/zzhq;->zzek()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzel()Lcom/google/android/gms/internal/places/zzhq;
    .locals 0

    return-object p0
.end method
