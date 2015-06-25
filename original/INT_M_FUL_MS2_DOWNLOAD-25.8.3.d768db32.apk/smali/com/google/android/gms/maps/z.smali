.class Lcom/google/android/gms/maps/z;
.super Lcom/google/android/gms/maps/internal/r$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;

.field final synthetic b:Lcom/google/android/gms/maps/StreetViewPanorama;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/z;->b:Lcom/google/android/gms/maps/StreetViewPanorama;

    iput-object p2, p0, Lcom/google/android/gms/maps/z;->a:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreetViewPanoramaCameraChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/z;->a:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;->onStreetViewPanoramaCameraChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V

    return-void
.end method
