.class final Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState$1;
.super Ljava/lang/Object;
.source "MenuDrawer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;
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
        "Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1663
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1660
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1668
    new-array v0, p1, [Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1660
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState$1;->newArray(I)[Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;

    move-result-object v0

    return-object v0
.end method
