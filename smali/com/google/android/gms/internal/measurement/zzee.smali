.class final Lcom/google/android/gms/internal/measurement/zzee;
.super Lcom/google/android/gms/internal/measurement/zzhk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhk;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    return-void
.end method

.method private final zza(DLcom/google/android/gms/internal/measurement/zzkb;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p1

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzee;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzkb;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(JLcom/google/android/gms/internal/measurement/zzkb;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p1, 0x0

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzee;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzkb;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    return-object v0

    :cond_2
    if-nez p4, :cond_3

    return-object v0

    :cond_3
    if-nez p3, :cond_5

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_0
    packed-switch p2, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :pswitch_5
    if-eqz p3, :cond_6

    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    const/16 p2, 0x42

    :goto_2
    :try_start_0
    invoke-static {p6, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string p2, "Invalid regular expression in REGEXP audience filter. expression"

    invoke-virtual {p1, p2, p6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzkb;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjv;->zzcd(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzee;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzkb;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzkd;)Ljava/lang/Boolean;
    .locals 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzasc:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzasc:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzasc:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzasf:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzasf:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_4

    :cond_2
    return-object v0

    :cond_3
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzasd:Ljava/lang/String;

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzasc:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzase:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzase:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_7

    if-eq v5, v4, :cond_7

    if-ne v5, v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzasd:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzasd:Ljava/lang/String;

    :goto_2
    move-object v7, v1

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzasf:[Ljava/lang/String;

    if-nez v1, :cond_8

    move-object v8, v0

    goto :goto_4

    :cond_8
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzkd;->zzasf:[Ljava/lang/String;

    if-eqz v6, :cond_9

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    move-object v8, p2

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    :goto_3
    if-ge v3, v2, :cond_a

    aget-object v8, p2, v3

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    move-object v8, v1

    :goto_4
    if-ne v5, v4, :cond_b

    move-object v9, v7

    goto :goto_5

    :cond_b
    move-object v9, v0

    :goto_5
    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/measurement/zzee;->zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_6
    return-object v0
.end method

.method private static zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzkb;D)Ljava/lang/Boolean;
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzaru:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzaru:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzaru:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzarx:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzary:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzarw:Ljava/lang/String;

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzaru:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzaru:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzarx:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjv;->zzcd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzary:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjv;->zzcd(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzarx:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzary:Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    move-object v3, v1

    goto :goto_1

    :catch_0
    :cond_5
    :goto_0
    return-object v1

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzarw:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjv;->zzcd(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    return-object v1

    :cond_7
    :try_start_1
    new-instance v3, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzkb;->zzarw:Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    move-object v4, p1

    :goto_1
    if-ne v0, v2, :cond_8

    if-nez p1, :cond_9

    return-object v1

    :cond_8
    if-eqz v3, :cond_10

    :cond_9
    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eq p1, v2, :cond_a

    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-eq p0, v6, :cond_a

    const/4 v5, 0x1

    :cond_a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_c

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v6, :cond_b

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v2, :cond_b

    const/4 v5, 0x1

    :cond_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_d

    const/4 v5, 0x1

    :cond_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v6, :cond_e

    const/4 v5, 0x1

    :cond_e
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v2, :cond_f

    const/4 v5, 0x1

    :cond_f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_1
    :cond_10
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzki;[Lcom/google/android/gms/internal/measurement/zzkn;)[Lcom/google/android/gms/internal/measurement/zzkh;
    .locals 62
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v12}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v9, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v9}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v10, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v10}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/measurement/zzei;->zzba(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v10, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v7, 0x0

    :goto_1
    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/zzkm;->zzauf:[J

    array-length v8, v8

    shl-int/lit8 v8, v8, 0x6

    if-ge v7, v8, :cond_3

    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/zzkm;->zzauf:[J

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/measurement/zzjv;->zza([JI)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v8

    move-object/from16 v17, v0

    const-string v0, "Filter already evaluated. audience ID, filter ID"

    move-object/from16 v18, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v19, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v0, v2, v9}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/zzkm;->zzaug:[J

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/measurement/zzjv;->zza([JI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_1
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v9

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    move-object/from16 v9, v19

    goto :goto_1

    :cond_3
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v9

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzkh;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzast:Ljava/lang/Boolean;

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzass:Lcom/google/android/gms/internal/measurement/zzkm;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzkm;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzasr:Lcom/google/android/gms/internal/measurement/zzkm;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzasr:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/util/BitSet;)[J

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/zzkm;->zzaug:[J

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzasr:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/util/BitSet;)[J

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkm;->zzauf:[J

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto/16 :goto_0

    :cond_4
    move-object/from16 v19, v9

    if-eqz v14, :cond_3f

    new-instance v6, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v6}, Landroid/support/v4/util/ArrayMap;-><init>()V

    array-length v4, v14

    const-wide/16 v17, 0x0

    move-wide/from16 v20, v17

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_3f

    aget-object v8, v14, v3

    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    iget-object v7, v8, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgi()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v5

    move/from16 v24, v3

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzew;->zzahy:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v5, v15, v3}, Lcom/google/android/gms/internal/measurement/zzeh;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    const-string v3, "_eid"

    invoke-static {v8, v3}, Lcom/google/android/gms/internal/measurement/zzjv;->zzb(Lcom/google/android/gms/internal/measurement/zzki;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_6

    move/from16 v25, v4

    const-string v4, "_ep"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    move/from16 v25, v4

    :cond_7
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    const-string v3, "_en"

    invoke-static {v8, v3}, Lcom/google/android/gms/internal/measurement/zzjv;->zzb(Lcom/google/android/gms/internal/measurement/zzki;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    const-string v4, "Extra parameter without an event name. eventId"

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v31, v6

    move-object/from16 v32, v10

    const/16 v16, 0x0

    const/16 v22, 0x1

    goto/16 :goto_12

    :cond_8
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    cmp-long v28, v3, v26

    if-eqz v28, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    move-object v4, v0

    move-object/from16 v26, v2

    goto :goto_8

    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v3

    invoke-virtual {v3, v15, v5}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v4, :cond_b

    goto/16 :goto_11

    :cond_b
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzki;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    const-string v2, "_eid"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzjv;->zzb(Lcom/google/android/gms/internal/measurement/zzki;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_6

    :goto_8
    const-wide/16 v2, 0x1

    sub-long v20, v20, v2

    cmp-long v0, v20, v17

    if-gtz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v3, "Clearing complex main event info. appId"

    invoke-virtual {v0, v3, v15}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "delete from main_event_params where app_id=?"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v29, v4

    const/4 v5, 0x1

    :try_start_1
    new-array v4, v5, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v16, 0x0

    :try_start_2
    aput-object v15, v4, v16

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v29, v4

    const/4 v5, 0x1

    :goto_9
    const/16 v16, 0x0

    :goto_a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Error clearing complex main event"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_b
    move-object/from16 v31, v6

    move-object/from16 v32, v10

    move-object/from16 v2, v29

    const/16 v22, 0x1

    move-object v10, v7

    goto :goto_c

    :cond_c
    move-object/from16 v29, v4

    const/16 v16, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v30, v29

    move-object v4, v5

    move-object/from16 v31, v6

    move-wide/from16 v5, v20

    move-object/from16 v32, v10

    move-object v10, v7

    move-object/from16 v7, v30

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzki;)Z

    move-object/from16 v2, v30

    :goto_c
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    array-length v0, v0

    array-length v3, v10

    add-int/2addr v0, v3

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzkj;

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ge v5, v4, :cond_e

    aget-object v7, v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-object/from16 v33, v2

    iget-object v2, v7, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Lcom/google/android/gms/internal/measurement/zzki;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v2

    if-nez v2, :cond_d

    add-int/lit8 v2, v6, 0x1

    aput-object v7, v0, v6

    move v6, v2

    :cond_d
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v33

    goto :goto_d

    :cond_e
    move-object/from16 v33, v2

    if-lez v6, :cond_11

    array-length v2, v10

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_f

    aget-object v4, v10, v3

    add-int/lit8 v5, v6, 0x1

    aput-object v4, v0, v6

    add-int/lit8 v3, v3, 0x1

    move v6, v5

    goto :goto_e

    :cond_f
    array-length v2, v0

    if-ne v6, v2, :cond_10

    :goto_f
    move-object v7, v0

    goto :goto_10

    :cond_10
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzkj;

    goto :goto_f

    :goto_10
    move-object v0, v9

    move-object v9, v7

    goto/16 :goto_15

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v2, "No unique parameters in main event. eventName"

    invoke-virtual {v0, v2, v9}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_12
    :goto_11
    move-object/from16 v31, v6

    move-object/from16 v32, v10

    const/16 v16, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    const-string v4, "Extra parameter without existing main event. eventName, eventId"

    invoke-virtual {v3, v4, v9, v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_12
    move-object v5, v1

    move-object v9, v11

    move-object v10, v12

    move-object v6, v15

    move-object/from16 v12, v19

    move-object/from16 v45, v31

    move-object/from16 v49, v32

    const/16 v42, 0x0

    goto/16 :goto_2b

    :cond_13
    move-object/from16 v31, v6

    move-object/from16 v32, v10

    const/16 v16, 0x0

    const/16 v22, 0x1

    move-object v10, v7

    if-eqz v3, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    const-string v0, "_epc"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/measurement/zzjv;->zzb(Lcom/google/android/gms/internal/measurement/zzki;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    move-object v0, v2

    :cond_14
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v0, v20, v17

    if-gtz v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v2, "Complex event with zero extra param count. eventName"

    invoke-virtual {v0, v2, v9}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v5

    goto :goto_13

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    move-object/from16 v3, p1

    move-object v4, v5

    move-object v0, v5

    move-wide/from16 v5, v20

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzki;)Z

    :goto_13
    move-object/from16 v26, v0

    move-object/from16 v33, v8

    goto :goto_14

    :cond_16
    move/from16 v25, v4

    move-object/from16 v31, v6

    move-object/from16 v32, v10

    const/16 v16, 0x0

    const/16 v22, 0x1

    move-object v10, v7

    :cond_17
    move-object/from16 v33, v0

    move-object/from16 v26, v2

    :goto_14
    move-object v0, v9

    move-object v9, v10

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/measurement/zzei;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v2

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v23, Lcom/google/android/gms/internal/measurement/zzeq;

    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    const-wide/16 v5, 0x1

    const-wide/16 v27, 0x1

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/zzki;->zzasw:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    const/4 v10, 0x0

    move-wide/from16 v7, v27

    move-object/from16 v41, v9

    move-object/from16 v39, v19

    move-object/from16 v40, v32

    const/16 v42, 0x0

    move-wide/from16 v9, v29

    move-object/from16 v43, v11

    move-object/from16 v44, v12

    move-wide/from16 v11, v34

    move-object/from16 v13, v36

    move-object/from16 v14, v37

    move-object v1, v15

    move-object/from16 v15, v38

    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/internal/measurement/zzeq;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_16

    :cond_18
    move-object/from16 v41, v9

    move-object/from16 v43, v11

    move-object/from16 v44, v12

    move-object v1, v15

    move-object/from16 v39, v19

    move-object/from16 v40, v32

    const/16 v42, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeq;->zzie()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v23

    move-object/from16 v2, v23

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzeq;)V

    iget-wide v2, v2, Lcom/google/android/gms/internal/measurement/zzeq;->zzafp:J

    move-object/from16 v4, v31

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Lcom/google/android/gms/internal/measurement/zzei;->zzj(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_19

    new-instance v5, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_19
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, v43

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v8

    const-string v10, "Skipping failed audience ID"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v10, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v43, v9

    goto :goto_17

    :cond_1b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v10, v44

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzkh;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v12, v39

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/BitSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v14, v40

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/BitSet;

    if-nez v8, :cond_1c

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzkh;

    invoke-direct {v8}, Lcom/google/android/gms/internal/measurement/zzkh;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v8, Lcom/google/android/gms/internal/measurement/zzkh;->zzast:Ljava/lang/Boolean;

    new-instance v11, Ljava/util/BitSet;

    invoke-direct {v11}, Ljava/util/BitSet;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Ljava/util/BitSet;

    invoke-direct {v13}, Ljava/util/BitSet;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v14, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzjz;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    move-object/from16 v45, v4

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/zzfg;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v4, "Evaluating filter. audience, filter, event"

    move-object/from16 v46, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v47, v6

    iget-object v6, v15, Lcom/google/android/gms/internal/measurement/zzjz;->zzark:Ljava/lang/Integer;

    move-object/from16 v48, v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v8

    move-object/from16 v49, v14

    iget-object v14, v15, Lcom/google/android/gms/internal/measurement/zzjz;->zzarl:Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4, v5, v6, v8}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v4, "Filter definition"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/measurement/zzfe;->zza(Lcom/google/android/gms/internal/measurement/zzjz;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    :cond_1d
    move-object/from16 v46, v5

    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v14

    :goto_19
    iget-object v1, v15, Lcom/google/android/gms/internal/measurement/zzjz;->zzark:Ljava/lang/Integer;

    if-eqz v1, :cond_3b

    iget-object v1, v15, Lcom/google/android/gms/internal/measurement/zzjz;->zzark:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x100

    if-le v1, v4, :cond_1e

    goto/16 :goto_29

    :cond_1e
    iget-object v1, v15, Lcom/google/android/gms/internal/measurement/zzjz;->zzark:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v5, "Event filter already evaluated true. audience ID, filter ID"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, v15, Lcom/google/android/gms/internal/measurement/zzjz;->zzark:Ljava/lang/Integer;

    invoke-virtual {v1, v5, v6, v8}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v4, v45

    move-object/from16 v5, v46

    move-object/from16 v6, v47

    move-object/from16 v8, v48

    move-object/from16 v14, v49

    move-object/from16 v1, p1

    goto/16 :goto_18

    :cond_1f
    iget-object v1, v15, Lcom/google/android/gms/internal/measurement/zzjz;->zzaro:Lcom/google/android/gms/internal/measurement/zzkb;

    if-eqz v1, :cond_21

    iget-object v1, v15, Lcom/google/android/gms/internal/measurement/zzjz;->zzaro:Lcom/google/android/gms/internal/measurement/zzkb;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct {v5, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzee;->zza(JLcom/google/android/gms/internal/measurement/zzkb;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_20

    move-wide/from16 v50, v2

    :goto_1a
    move-object/from16 v52, v41

    :goto_1b
    const/4 v1, 0x0

    goto/16 :goto_27

    :cond_20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-wide/from16 v50, v2

    move-object/from16 v52, v41

    goto/16 :goto_27

    :cond_21
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    :cond_22
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v8, v15, Lcom/google/android/gms/internal/measurement/zzjz;->zzarm:[Lcom/google/android/gms/internal/measurement/zzka;

    array-length v14, v8

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v14, :cond_24

    move-wide/from16 v50, v2

    aget-object v2, v8, v4

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzka;->zzart:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "null or empty param name in filter. event"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a

    :cond_23
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzka;->zzart:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v2, v50

    goto :goto_1c

    :cond_24
    move-wide/from16 v50, v2

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object/from16 v3, v41

    array-length v4, v3

    const/4 v8, 0x0

    :goto_1d
    if-ge v8, v4, :cond_29

    aget-object v14, v3, v8

    move-object/from16 v52, v3

    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/zzkj;->zzasz:Ljava/lang/Long;

    if-eqz v3, :cond_25

    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    iget-object v14, v14, Lcom/google/android/gms/internal/measurement/zzkj;->zzasz:Ljava/lang/Long;

    :goto_1e
    invoke-interface {v2, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_25
    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/zzkj;->zzaqx:Ljava/lang/Double;

    if-eqz v3, :cond_26

    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    iget-object v14, v14, Lcom/google/android/gms/internal/measurement/zzkj;->zzaqx:Ljava/lang/Double;

    goto :goto_1e

    :cond_26
    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/zzkj;->zzajf:Ljava/lang/String;

    if-eqz v3, :cond_27

    iget-object v3, v14, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    iget-object v14, v14, Lcom/google/android/gms/internal/measurement/zzkj;->zzajf:Ljava/lang/String;

    goto :goto_1e

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Unknown value for param. event, param"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v4

    iget-object v8, v14, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1f
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_28
    :goto_20
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v52

    goto :goto_1d

    :cond_29
    move-object/from16 v52, v3

    iget-object v1, v15, Lcom/google/android/gms/internal/measurement/zzjz;->zzarm:[Lcom/google/android/gms/internal/measurement/zzka;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_38

    aget-object v8, v1, v4

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v53, v1

    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/zzka;->zzars:Ljava/lang/Boolean;

    invoke-virtual {v14, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v14, v8, Lcom/google/android/gms/internal/measurement/zzka;->zzart:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Event has empty param name. event"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_2a
    move/from16 v54, v3

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v55, v2

    instance-of v2, v3, Ljava/lang/Long;

    if-eqz v2, :cond_2d

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/zzka;->zzarr:Lcom/google/android/gms/internal/measurement/zzkb;

    if-nez v2, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "No number filter for long param. event, param"

    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1f

    :cond_2b
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzka;->zzarr:Lcom/google/android/gms/internal/measurement/zzkb;

    invoke-direct {v5, v2, v3, v8}, Lcom/google/android/gms/internal/measurement/zzee;->zza(JLcom/google/android/gms/internal/measurement/zzkb;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2c

    :goto_23
    goto/16 :goto_1b

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_33

    :goto_24
    goto/16 :goto_26

    :cond_2d
    instance-of v2, v3, Ljava/lang/Double;

    if-eqz v2, :cond_30

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/zzka;->zzarr:Lcom/google/android/gms/internal/measurement/zzkb;

    if-nez v2, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "No number filter for double param. event, param"

    goto :goto_22

    :cond_2e
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzka;->zzarr:Lcom/google/android/gms/internal/measurement/zzkb;

    invoke-direct {v5, v2, v3, v8}, Lcom/google/android/gms/internal/measurement/zzee;->zza(DLcom/google/android/gms/internal/measurement/zzkb;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2f

    goto :goto_23

    :cond_2f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_33

    goto :goto_24

    :cond_30
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_36

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/zzka;->zzarq:Lcom/google/android/gms/internal/measurement/zzkd;

    if-eqz v2, :cond_31

    check-cast v3, Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/zzka;->zzarq:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-direct {v5, v3, v2}, Lcom/google/android/gms/internal/measurement/zzee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzkd;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_25

    :cond_31
    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/zzka;->zzarr:Lcom/google/android/gms/internal/measurement/zzkb;

    if-eqz v2, :cond_35

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjv;->zzcd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/zzka;->zzarr:Lcom/google/android/gms/internal/measurement/zzkb;

    invoke-direct {v5, v3, v2}, Lcom/google/android/gms/internal/measurement/zzee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzkb;)Ljava/lang/Boolean;

    move-result-object v2

    :goto_25
    if-nez v2, :cond_32

    goto :goto_23

    :cond_32
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_33

    goto :goto_24

    :cond_33
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v53

    move/from16 v3, v54

    move-object/from16 v2, v55

    goto/16 :goto_21

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Invalid param value for number filter. event, param"

    goto/16 :goto_22

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "No filter for String param. event, param"

    goto/16 :goto_22

    :cond_36
    if-nez v3, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Missing param for filter. event, param"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_26
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_27

    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Unknown param type. event, param"

    goto/16 :goto_22

    :cond_38
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Event filter result"

    if-nez v1, :cond_39

    const-string v4, "null"

    goto :goto_28

    :cond_39
    move-object v4, v1

    :goto_28
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_3a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_3a
    iget-object v2, v15, Lcom/google/android/gms/internal/measurement/zzjz;->zzark:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v13, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, v15, Lcom/google/android/gms/internal/measurement/zzjz;->zzark:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_2a

    :cond_3b
    :goto_29
    move-wide/from16 v50, v2

    move-object/from16 v52, v41

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Invalid event filter ID. appId, id"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v15, Lcom/google/android/gms/internal/measurement/zzjz;->zzark:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    :goto_2a
    move-object v1, v6

    move-object/from16 v4, v45

    move-object/from16 v5, v46

    move-object/from16 v6, v47

    move-object/from16 v8, v48

    move-object/from16 v14, v49

    move-wide/from16 v2, v50

    move-object/from16 v41, v52

    goto/16 :goto_18

    :cond_3d
    move-object/from16 v46, v5

    move-object/from16 v5, p0

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v39, v12

    move-object/from16 v40, v14

    move-object/from16 v5, v46

    goto/16 :goto_17

    :cond_3e
    move-object v6, v1

    move-object/from16 v45, v4

    move-object/from16 v12, v39

    move-object/from16 v49, v40

    move-object/from16 v9, v43

    move-object/from16 v10, v44

    move-object/from16 v5, p0

    move-object/from16 v2, v26

    move-object/from16 v0, v33

    :goto_2b
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v14, p2

    move-object v1, v5

    move-object v15, v6

    move-object v11, v9

    move-object/from16 v19, v12

    move/from16 v4, v25

    move-object/from16 v6, v45

    move-object/from16 v13, p3

    move-object v12, v10

    move-object/from16 v10, v49

    goto/16 :goto_3

    :cond_3f
    move-object v5, v1

    move-object/from16 v49, v10

    move-object v9, v11

    move-object v10, v12

    move-object v6, v15

    move-object/from16 v12, v19

    const/16 v22, 0x1

    const/16 v42, 0x0

    move-object/from16 v1, p3

    if-eqz v1, :cond_56

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v2, :cond_56

    aget-object v4, v1, v3

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/internal/measurement/zzei;->zzk(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_40

    new-instance v7, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v7}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_40
    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_55

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v13

    const-string v14, "Skipping failed audience ID"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v14, v11}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2d

    :cond_42
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzkh;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/BitSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v1, v49

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/BitSet;

    if-nez v13, :cond_43

    new-instance v13, Lcom/google/android/gms/internal/measurement/zzkh;

    invoke-direct {v13}, Lcom/google/android/gms/internal/measurement/zzkh;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v13, Lcom/google/android/gms/internal/measurement/zzkh;->zzast:Ljava/lang/Boolean;

    new-instance v14, Ljava/util/BitSet;

    invoke-direct {v14}, Ljava/util/BitSet;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Ljava/util/BitSet;

    invoke-direct {v15}, Ljava/util/BitSet;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_54

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v56, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkc;

    move/from16 v57, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    move-object/from16 v58, v7

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzfg;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v7, "Evaluating filter. audience, filter, property"

    move-object/from16 v59, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v60, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/measurement/zzkc;->zzark:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v6

    move-object/from16 v61, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzkc;->zzasa:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7, v8, v13, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Filter definition"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zza(Lcom/google/android/gms/internal/measurement/zzkc;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2f

    :cond_44
    move-object/from16 v61, v1

    move-object/from16 v59, v8

    move-object/from16 v60, v13

    :goto_2f
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzkc;->zzark:Ljava/lang/Integer;

    if-eqz v1, :cond_53

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzkc;->zzark:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_45

    goto/16 :goto_36

    :cond_45
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzkc;->zzark:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v6, "Property filter already evaluated true. audience ID, filter ID"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzkc;->zzark:Ljava/lang/Integer;

    invoke-virtual {v1, v6, v7, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    :goto_30
    move-object/from16 v0, v56

    move/from16 v2, v57

    move-object/from16 v7, v58

    move-object/from16 v8, v59

    move-object/from16 v13, v60

    move-object/from16 v1, v61

    move-object/from16 v6, p1

    goto/16 :goto_2e

    :cond_47
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzkc;->zzasb:Lcom/google/android/gms/internal/measurement/zzka;

    if-nez v1, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v6, "Missing property filter. property"

    :goto_31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_32
    const/4 v1, 0x0

    goto/16 :goto_34

    :cond_48
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzka;->zzars:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzkn;->zzasz:Ljava/lang/Long;

    if-eqz v7, :cond_4a

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzka;->zzarr:Lcom/google/android/gms/internal/measurement/zzkb;

    if-nez v7, :cond_49

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v6, "No number filter for long property. property"

    goto :goto_31

    :cond_49
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzkn;->zzasz:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzka;->zzarr:Lcom/google/android/gms/internal/measurement/zzkb;

    invoke-direct {v5, v7, v8, v1}, Lcom/google/android/gms/internal/measurement/zzee;->zza(JLcom/google/android/gms/internal/measurement/zzkb;)Ljava/lang/Boolean;

    move-result-object v1

    :goto_33
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/measurement/zzee;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_34

    :cond_4a
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzkn;->zzaqx:Ljava/lang/Double;

    if-eqz v7, :cond_4c

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzka;->zzarr:Lcom/google/android/gms/internal/measurement/zzkb;

    if-nez v7, :cond_4b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v6, "No number filter for double property. property"

    goto :goto_31

    :cond_4b
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzkn;->zzaqx:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzka;->zzarr:Lcom/google/android/gms/internal/measurement/zzkb;

    invoke-direct {v5, v7, v8, v1}, Lcom/google/android/gms/internal/measurement/zzee;->zza(DLcom/google/android/gms/internal/measurement/zzkb;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_33

    :cond_4c
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzkn;->zzajf:Ljava/lang/String;

    if-eqz v7, :cond_50

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzka;->zzarq:Lcom/google/android/gms/internal/measurement/zzkd;

    if-nez v7, :cond_4f

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzka;->zzarr:Lcom/google/android/gms/internal/measurement/zzkb;

    if-nez v7, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v6, "No string or number filter defined. property"

    goto :goto_31

    :cond_4d
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzkn;->zzajf:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjv;->zzcd(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4e

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzkn;->zzajf:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzka;->zzarr:Lcom/google/android/gms/internal/measurement/zzkb;

    invoke-direct {v5, v7, v1}, Lcom/google/android/gms/internal/measurement/zzee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzkb;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_33

    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v6, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/zzkn;->zzajf:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_32

    :cond_4f
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzkn;->zzajf:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzka;->zzarq:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-direct {v5, v7, v1}, Lcom/google/android/gms/internal/measurement/zzee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzkd;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_33

    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v6, "User property has no value, property"

    goto/16 :goto_31

    :goto_34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v6

    const-string v7, "Property filter result"

    if-nez v1, :cond_51

    const-string v8, "null"

    goto :goto_35

    :cond_51
    move-object v8, v1

    :goto_35
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_52

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30

    :cond_52
    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzkc;->zzark:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v15, v6}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzkc;->zzark:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_30

    :cond_53
    const/16 v2, 0x100

    :goto_36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v6, "Invalid property filter ID. appId, id"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzkc;->zzark:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v7, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v56

    move/from16 v2, v57

    move-object/from16 v7, v58

    move-object/from16 v8, v59

    move-object/from16 v49, v61

    goto :goto_37

    :cond_54
    move/from16 v57, v2

    move-object/from16 v49, v1

    :goto_37
    move-object/from16 v1, p3

    move-object/from16 v6, p1

    goto/16 :goto_2d

    :cond_55
    move-object/from16 v56, v0

    move/from16 v57, v2

    move-object/from16 v61, v49

    const/16 v2, 0x100

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v57

    move-object/from16 v1, p3

    move-object/from16 v6, p1

    goto/16 :goto_2c

    :cond_56
    move-object/from16 v61, v49

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Lcom/google/android/gms/internal/measurement/zzkh;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v8, 0x0

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzkh;

    if-nez v3, :cond_57

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzkh;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzkh;-><init>()V

    :cond_57
    add-int/lit8 v4, v8, 0x1

    aput-object v3, v1, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v3, Lcom/google/android/gms/internal/measurement/zzkh;->zzarg:Ljava/lang/Integer;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/zzkm;-><init>()V

    iput-object v6, v3, Lcom/google/android/gms/internal/measurement/zzkh;->zzasr:Lcom/google/android/gms/internal/measurement/zzkm;

    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/zzkh;->zzasr:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/BitSet;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/util/BitSet;)[J

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/measurement/zzkm;->zzaug:[J

    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/zzkh;->zzasr:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v11, v61

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/BitSet;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/util/BitSet;)[J

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/measurement/zzkm;->zzauf:[J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v6

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzkh;->zzasr:Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzabj;->zzwg()I

    move-result v7

    new-array v7, v7, [B

    array-length v8, v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    const/4 v13, 0x0

    :try_start_4
    invoke-static {v7, v13, v8}, Lcom/google/android/gms/internal/measurement/zzabb;->zzb([BII)Lcom/google/android/gms/internal/measurement/zzabb;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/zzabj;->zza(Lcom/google/android/gms/internal/measurement/zzabb;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzabb;->zzvy()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "app_id"

    move-object/from16 v14, p1

    invoke-virtual {v3, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "audience_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "current_results"

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzei;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v7, "audience_filter_values"
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v8, 0x5

    const/4 v15, 0x0

    :try_start_6
    invoke-virtual {v0, v7, v15, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v7

    const-wide/16 v16, -0x1

    cmp-long v0, v7, v16

    if-nez v0, :cond_58

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v3, "Failed to insert filter results (got -1). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3c

    :catch_3
    move-exception v0

    goto :goto_39

    :catch_4
    move-exception v0

    const/4 v15, 0x0

    :goto_39
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    const-string v6, "Error storing filter results. appId"

    goto :goto_3b

    :catch_5
    move-exception v0

    goto :goto_3a

    :catch_6
    move-exception v0

    const/4 v13, 0x0

    :goto_3a
    move-object/from16 v14, p1

    const/4 v15, 0x0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    const-string v6, "Configuration loss. Failed to serialize filter results. appId"

    :goto_3b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    :goto_3c
    move v8, v4

    move-object/from16 v61, v11

    const/16 v42, 0x0

    goto/16 :goto_38

    :cond_59
    move-object/from16 v14, p1

    goto/16 :goto_38

    :cond_5a
    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzkh;

    return-object v0
.end method

.method protected final zzhh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
