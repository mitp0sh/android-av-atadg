.class abstract Lcom/google/android/gms/drive/internal/dk;
.super Lcom/google/android/gms/drive/internal/cc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/internal/cc",
        "<",
        "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/android/gms/drive/internal/y;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/internal/y;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/dk;->c:Lcom/google/android/gms/drive/internal/y;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/cc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/y;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/internal/dd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/internal/dk;-><init>(Lcom/google/android/gms/drive/internal/y;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveResource$MetadataResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/internal/dj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/dj;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V

    return-object v0
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/dk;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveResource$MetadataResult;

    move-result-object v0

    return-object v0
.end method
