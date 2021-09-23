.class Ltw/edu/kmu/act/GalleryActivity$2;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/GalleryActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/GalleryActivity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 154
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/GalleryActivity;->access$200(Ltw/edu/kmu/act/GalleryActivity;)V

    .line 156
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/GalleryActivity;->access$000(Ltw/edu/kmu/act/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/GalleryActivity;->access$000(Ltw/edu/kmu/act/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    rem-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 157
    iget-object p2, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    const p3, 0x7f0800f6

    invoke-virtual {p2, p3}, Ltw/edu/kmu/act/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 158
    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/GalleryActivity;->currentLocale:Ljava/lang/String;

    const-string p4, "en"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "ename"

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string p3, "name"

    goto :goto_0

    .line 160
    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p2, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    const p3, 0x7f0800f4

    invoke-virtual {p2, p3}, Ltw/edu/kmu/act/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 162
    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/GalleryActivity;->currentLocale:Ljava/lang/String;

    const-string p4, "en"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "edesc"

    :goto_2
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_3

    :cond_1
    const-string p3, "description"

    goto :goto_2

    :goto_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object p2, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/GalleryActivity;->access$300(Ltw/edu/kmu/act/GalleryActivity;)Ltw/edu/kmu/listener/PlaySongListener;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/GalleryActivity;->access$300(Ltw/edu/kmu/act/GalleryActivity;)Ltw/edu/kmu/listener/PlaySongListener;

    move-result-object p2

    invoke-virtual {p2}, Ltw/edu/kmu/listener/PlaySongListener;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 165
    iget-object p2, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/GalleryActivity;->access$300(Ltw/edu/kmu/act/GalleryActivity;)Ltw/edu/kmu/listener/PlaySongListener;

    move-result-object p2

    invoke-virtual {p2}, Ltw/edu/kmu/listener/PlaySongListener;->turnOff()V

    :cond_2
    const-string p2, "fileName"

    .line 168
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 170
    iget-object p2, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    const-string p3, ""

    invoke-static {p2, p3}, Ltw/edu/kmu/act/GalleryActivity;->access$402(Ltw/edu/kmu/act/GalleryActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "URL"

    .line 171
    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/GalleryActivity;->access$400(Ltw/edu/kmu/act/GalleryActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 173
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/GalleryActivity;->access$500(Ltw/edu/kmu/act/GalleryActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/GalleryActivity;->access$600(Ltw/edu/kmu/act/GalleryActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    new-instance p1, Ltw/edu/kmu/act/GalleryActivity$2$1;

    invoke-direct {p1, p0}, Ltw/edu/kmu/act/GalleryActivity$2$1;-><init>(Ltw/edu/kmu/act/GalleryActivity$2;)V

    .line 186
    invoke-virtual {p1}, Ltw/edu/kmu/act/GalleryActivity$2$1;->start()V

    goto :goto_4

    .line 188
    :cond_3
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/GalleryActivity;->access$500(Ltw/edu/kmu/act/GalleryActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 195
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    const v0, 0x7f0800f6

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/GalleryActivity;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "No Data"

    goto :goto_0

    :cond_0
    const-string v0, "\u76ee\u524d\u7dda\u4e0a\u85dd\u5eca\u4e26\u6c92\u6709\u8cc7\u6599"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
