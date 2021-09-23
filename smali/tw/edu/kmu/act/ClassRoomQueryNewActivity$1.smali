.class Ltw/edu/kmu/act/ClassRoomQueryNewActivity$1;
.super Ljava/lang/Object;
.source "ClassRoomQueryNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->getDateBtnView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

.field final synthetic val$qTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$1;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$1;->val$qTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 221
    iget-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$1;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$1;->val$qTag:Ljava/lang/String;

    invoke-static {p1, v0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->access$400(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ljava/lang/String;)V

    return-void
.end method
