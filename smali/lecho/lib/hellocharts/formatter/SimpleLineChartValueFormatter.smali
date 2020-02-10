.class public Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;
.super Ljava/lang/Object;
.source "SimpleLineChartValueFormatter.java"

# interfaces
.implements Llecho/lib/hellocharts/formatter/LineChartValueFormatter;


# instance fields
.field private valueFormatterHelper:Llecho/lib/hellocharts/formatter/ValueFormatterHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->valueFormatterHelper:Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    .line 10
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->valueFormatterHelper:Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    invoke-virtual {v0}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->determineDecimalSeparator()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 14
    invoke-direct {p0}, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;-><init>()V

    .line 15
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->valueFormatterHelper:Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->setDecimalDigitsNumber(I)Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    return-void
.end method


# virtual methods
.method public formatChartValue([CLlecho/lib/hellocharts/model/PointValue;)I
    .locals 2

    .line 20
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->valueFormatterHelper:Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v1

    .line 21
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/PointValue;->getLabelAsChars()[C

    move-result-object p2

    .line 20
    invoke-virtual {v0, p1, v1, p2}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->formatFloatValueWithPrependedAndAppendedText([CF[C)I

    move-result p1

    return p1
.end method

.method public getAppendedText()[C
    .locals 1

    .line 34
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->valueFormatterHelper:Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    invoke-virtual {v0}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->getAppendedText()[C

    move-result-object v0

    return-object v0
.end method

.method public getDecimalDigitsNumber()I
    .locals 1

    .line 25
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->valueFormatterHelper:Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    invoke-virtual {v0}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->getDecimalDigitsNumber()I

    move-result v0

    return v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    .line 52
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->valueFormatterHelper:Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    invoke-virtual {v0}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->getDecimalSeparator()C

    move-result v0

    return v0
.end method

.method public getPrependedText()[C
    .locals 1

    .line 43
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->valueFormatterHelper:Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    invoke-virtual {v0}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->getPrependedText()[C

    move-result-object v0

    return-object v0
.end method

.method public setAppendedText([C)Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;
    .locals 1

    .line 38
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->valueFormatterHelper:Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->setAppendedText([C)Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    return-object p0
.end method

.method public setDecimalDigitsNumber(I)Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;
    .locals 1

    .line 29
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->valueFormatterHelper:Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->setDecimalDigitsNumber(I)Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    return-object p0
.end method

.method public setDecimalSeparator(C)Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;
    .locals 1

    .line 56
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->valueFormatterHelper:Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->setDecimalSeparator(C)Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    return-object p0
.end method

.method public setPrependedText([C)Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;
    .locals 1

    .line 47
    iget-object v0, p0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->valueFormatterHelper:Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/formatter/ValueFormatterHelper;->setPrependedText([C)Llecho/lib/hellocharts/formatter/ValueFormatterHelper;

    return-object p0
.end method
