.class final Lcom/viewpagerindicator/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/viewpagerindicator/LinePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viewpagerindicator/LinePageIndicator$SavedState;
    .locals 2

    .prologue
    .line 454
    new-instance v0, Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viewpagerindicator/LinePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lcom/viewpagerindicator/e;)V

    return-object v0
.end method

.method public a(I)[Lcom/viewpagerindicator/LinePageIndicator$SavedState;
    .locals 1

    .prologue
    .line 459
    new-array v0, p1, [Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/f;->a(Landroid/os/Parcel;)Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/f;->a(I)[Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method
