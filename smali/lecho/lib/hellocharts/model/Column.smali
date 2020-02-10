.class public Llecho/lib/hellocharts/model/Column;
.super Ljava/lang/Object;
.source "Column.java"


# instance fields
.field private formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/SubcolumnValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    .line 19
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    .line 20
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleColumnChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleColumnChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/SubcolumnValue;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    .line 19
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    .line 20
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleColumnChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleColumnChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    .line 29
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/Column;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Column;

    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/Column;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    .line 19
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    .line 20
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleColumnChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleColumnChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    .line 33
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    .line 34
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    .line 35
    iget-object v0, p1, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    iput-object v0, p0, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    .line 37
    iget-object p1, p1, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 38
    iget-object v1, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    new-instance v2, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-direct {v2, v0}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(Llecho/lib/hellocharts/model/SubcolumnValue;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 50
    iget-object v0, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 51
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFormatter()Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;
    .locals 1

    .line 100
    iget-object v0, p0, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/SubcolumnValue;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    return-object v0
.end method

.method public hasLabels()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    return v0
.end method

.method public hasLabelsOnlyForSelected()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    return v0
.end method

.method public setFormatter(Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;)Llecho/lib/hellocharts/model/Column;
    .locals 0

    if-eqz p1, :cond_0

    .line 105
    iput-object p1, p0, Llecho/lib/hellocharts/model/Column;->formatter:Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    :cond_0
    return-object p0
.end method

.method public setHasLabels(Z)Llecho/lib/hellocharts/model/Column;
    .locals 0

    .line 73
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    :cond_0
    return-object p0
.end method

.method public setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Column;
    .locals 0

    .line 92
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Column;->hasLabels:Z

    :cond_0
    return-object p0
.end method

.method public setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Column;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/SubcolumnValue;",
            ">;)",
            "Llecho/lib/hellocharts/model/Column;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    goto :goto_0

    .line 63
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public update(F)V
    .locals 2

    .line 43
    iget-object v0, p0, Llecho/lib/hellocharts/model/Column;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 44
    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/model/SubcolumnValue;->update(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
