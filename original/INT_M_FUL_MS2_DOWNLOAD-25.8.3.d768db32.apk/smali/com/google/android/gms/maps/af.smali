.class Lcom/google/android/gms/maps/af;
.super Lcom/google/android/gms/maps/internal/u$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;

.field final synthetic b:Lcom/google/android/gms/maps/ae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/ae;Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/af;->b:Lcom/google/android/gms/maps/ae;

    iput-object p2, p0, Lcom/google/android/gms/maps/af;->a:Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/u$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/af;->a:Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;

    new-instance v1, Lcom/google/android/gms/maps/StreetViewPanorama;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/StreetViewPanorama;-><init>(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;->onStreetViewPanoramaReady(Lcom/google/android/gms/maps/StreetViewPanorama;)V

    return-void
.end method
