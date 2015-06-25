.class final Lcom/viewpagerindicator/k;
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
        "Lcom/viewpagerindicator/TitlePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    .locals 2

    .prologue
    .line 871
    new-instance v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lcom/viewpagerindicator/j;)V

    return-object v0
.end method

.method public a(I)[Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    .locals 1

    .prologue
    .line 876
    new-array v0, p1, [Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/k;->a(Landroid/os/Parcel;)Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/k;->a(I)[Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method
