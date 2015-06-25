.class final Landroid/support/v7/internal/widget/e;
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
        "Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;
    .locals 2

    .prologue
    .line 384
    new-instance v0, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;-><init>(Landroid/os/Parcel;Landroid/support/v7/internal/widget/c;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;
    .locals 1

    .prologue
    .line 388
    new-array v0, p1, [Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/e;->a(Landroid/os/Parcel;)Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/e;->a(I)[Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;

    move-result-object v0

    return-object v0
.end method
