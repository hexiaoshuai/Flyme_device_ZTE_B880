.class final Landroid/telephony/SubscriptionInfo$1;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionInfo;
    .locals 14
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 347
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "iccId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 349
    .local v3, "simSlotIndex":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v4

    .line 350
    .local v4, "displayName":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    .line 351
    .local v5, "carrierName":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 352
    .local v6, "nameSource":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 353
    .local v7, "iconTint":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 354
    .local v8, "number":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 355
    .local v9, "dataRoaming":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 356
    .local v11, "mcc":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 357
    .local v12, "mnc":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 358
    .local v13, "countryIso":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    .line 360
    .local v10, "iconBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/telephony/SubscriptionInfo;

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 366
    new-array v0, p1, [Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionInfo$1;->newArray(I)[Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method
