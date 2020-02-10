.class public Ltw/edu/kmu/view/ListItemElement;
.super Ljava/lang/Object;
.source "ListItemElement.java"

# interfaces
.implements Ltw/edu/kmu/view/ListElement;


# instance fields
.field private dateTime:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateTime()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Ltw/edu/kmu/view/ListItemElement;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0a0098

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Ltw/edu/kmu/view/ListItemElement;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewForListElement(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 43
    invoke-virtual {p0}, Ltw/edu/kmu/view/ListItemElement;->getLayoutId()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const p2, 0x7f0801c7

    .line 44
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 45
    invoke-virtual {p0}, Ltw/edu/kmu/view/ListItemElement;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0800b6

    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 47
    invoke-virtual {p0}, Ltw/edu/kmu/view/ListItemElement;->getDateTime()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public isClickable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Ltw/edu/kmu/view/ListItemElement;->dateTime:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Ltw/edu/kmu/view/ListItemElement;->title:Ljava/lang/String;

    return-void
.end method
