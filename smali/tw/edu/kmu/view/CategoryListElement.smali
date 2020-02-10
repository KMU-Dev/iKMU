.class public Ltw/edu/kmu/view/CategoryListElement;
.super Ljava/lang/Object;
.source "CategoryListElement.java"

# interfaces
.implements Ltw/edu/kmu/view/ListElement;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0a0097

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Ltw/edu/kmu/view/CategoryListElement;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getViewForListElement(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-virtual {p0}, Ltw/edu/kmu/view/CategoryListElement;->getLayoutId()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f080092

    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 38
    iget-object p3, p0, Ltw/edu/kmu/view/CategoryListElement;->text:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public isClickable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Ltw/edu/kmu/view/CategoryListElement;->text:Ljava/lang/String;

    return-void
.end method
