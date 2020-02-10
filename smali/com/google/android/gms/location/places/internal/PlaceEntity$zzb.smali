.class public final Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/PlaceEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private latLng:Lcom/google/android/gms/maps/model/LatLng;

.field private name:Ljava/lang/String;

.field private zzdp:Ljava/lang/String;

.field private zzdr:Ljava/lang/String;

.field private zzds:Landroid/net/Uri;

.field private zzgf:Ljava/lang/String;

.field private zzgg:F

.field private zzgh:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzgj:Z

.field private zzgk:F

.field private zzgl:I

.field private zzgm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzgn:Lcom/google/android/gms/location/places/internal/zzam;

.field private zzgp:Ljava/lang/String;

.field private zzgq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzgr:Lcom/google/android/gms/location/places/internal/zzah;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgl:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgk:F

    return-void
.end method


# virtual methods
.method public final zzag()Lcom/google/android/gms/location/places/internal/PlaceEntity;
    .locals 20

    move-object/from16 v0, p0

    new-instance v19, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgf:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgq:Ljava/util/List;

    iget-object v4, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzdp:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzdr:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgm:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    iget v9, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgg:F

    iget-object v10, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgh:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v12, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzds:Landroid/net/Uri;

    iget-boolean v13, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgj:Z

    iget v14, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgk:F

    iget v15, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgl:I

    iget-object v11, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgn:Lcom/google/android/gms/location/places/internal/zzam;

    move-object/from16 v16, v11

    iget-object v11, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgr:Lcom/google/android/gms/location/places/internal/zzah;

    move-object/from16 v17, v11

    iget-object v11, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgp:Ljava/lang/String;

    move-object/from16 v18, v11

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/google/android/gms/location/places/internal/PlaceEntity;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFILcom/google/android/gms/location/places/internal/zzam;Lcom/google/android/gms/location/places/internal/zzah;Ljava/lang/String;)V

    return-object v19
.end method

.method public final zzb(F)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgg:F

    return-object p0
.end method

.method public final zzb(Landroid/net/Uri;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzds:Landroid/net/Uri;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/location/places/internal/zzah;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgr:Lcom/google/android/gms/location/places/internal/zzah;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/location/places/internal/zzam;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgn:Lcom/google/android/gms/location/places/internal/zzam;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgh:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgj:Z

    return-object p0
.end method

.method public final zzc(F)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgk:F

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgq:Ljava/util/List;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgm:Ljava/util/List;

    return-object p0
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzdp:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf(I)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgl:I

    return-object p0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzdr:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;->zzgp:Ljava/lang/String;

    return-object p0
.end method
