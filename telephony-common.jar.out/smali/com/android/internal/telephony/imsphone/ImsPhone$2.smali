.class Lcom/android/internal/telephony/imsphone/ImsPhone$2;
.super Lcom/android/ims/ImsEcbmStateListener;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Lcom/android/ims/ImsEcbmStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onECBMEntered()V
    .locals 2

    .prologue
    .line 1263
    const-string v0, "ImsPhone"

    const-string v1, "onECBMEntered"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEnterEmergencyCallbackMode()V
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$000(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 1265
    return-void
.end method

.method public onECBMExited()V
    .locals 2

    .prologue
    .line 1269
    const-string v0, "ImsPhone"

    const-string v1, "onECBMExited"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhone;->handleExitEmergencyCallbackMode()V
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$100(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 1271
    return-void
.end method
