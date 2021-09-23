.class Ltw/edu/kmu/act/MainPageActivityV2$1;
.super Ljava/lang/Object;
.source "MainPageActivityV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MainPageActivityV2;->getToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MainPageActivityV2;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MainPageActivityV2;)V
    .locals 0

    .line 177
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$1;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 180
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$1;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-static {v0}, Ltw/edu/kmu/act/MainPageActivityV2;->access$100(Ltw/edu/kmu/act/MainPageActivityV2;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$1;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-static {v0}, Ltw/edu/kmu/act/MainPageActivityV2;->access$100(Ltw/edu/kmu/act/MainPageActivityV2;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v0

    iget-object v0, v0, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$1;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-static {v0}, Ltw/edu/kmu/act/MainPageActivityV2;->access$200(Ltw/edu/kmu/act/MainPageActivityV2;)V

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Ltw/edu/kmu/act/MainPageActivityV2$UpdateMachineData;

    iget-object v1, p0, Ltw/edu/kmu/act/MainPageActivityV2$1;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    iget-object v2, p0, Ltw/edu/kmu/act/MainPageActivityV2$1;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-static {v2}, Ltw/edu/kmu/act/MainPageActivityV2;->access$100(Ltw/edu/kmu/act/MainPageActivityV2;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v2

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ltw/edu/kmu/act/MainPageActivityV2$UpdateMachineData;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 186
    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/MainPageActivityV2$UpdateMachineData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
