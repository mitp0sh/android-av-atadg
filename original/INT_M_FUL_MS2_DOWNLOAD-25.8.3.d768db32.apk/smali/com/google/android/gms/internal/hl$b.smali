.class public Lcom/google/android/gms/internal/hl$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/hn;


# instance fields
.field public Dd:Lcom/google/android/gms/common/api/Status;

.field public De:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/hr;",
            ">;"
        }
    .end annotation
.end field

.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hl$b;->CREATOR:Lcom/google/android/gms/internal/hn;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/hl$b;->a:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/hr;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hl$b;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/hl$b;->Dd:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/internal/hl$b;->De:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hl$b;->CREATOR:Lcom/google/android/gms/internal/hn;

    const/4 v0, 0x0

    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hl$b;->Dd:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hl$b;->CREATOR:Lcom/google/android/gms/internal/hn;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hn;->a(Lcom/google/android/gms/internal/hl$b;Landroid/os/Parcel;I)V

    return-void
.end method
