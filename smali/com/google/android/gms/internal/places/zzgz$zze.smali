.class public abstract Lcom/google/android/gms/internal/places/zzgz$zze;
.super Lcom/google/android/gms/internal/places/zzgz;

# interfaces
.implements Lcom/google/android/gms/internal/places/zzij;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/places/zzgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/places/zzgz$zze<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/places/zzgz$zzd<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/places/zzgz<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/places/zzij;"
    }
.end annotation


# instance fields
.field protected zzsm:Lcom/google/android/gms/internal/places/zzgq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/places/zzgq<",
            "Lcom/google/android/gms/internal/places/zzgz$zzf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzgz;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/places/zzgq;->zzdf()Lcom/google/android/gms/internal/places/zzgq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zze;->zzsm:Lcom/google/android/gms/internal/places/zzgq;

    return-void
.end method
