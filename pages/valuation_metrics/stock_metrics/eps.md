<!-- markdownlint-disable MD033 -->
# Earnings Per Share (EPS)

## Content

This is where you will start writing your technical blog posts and documentation.

### Formula Example

The Present Value (PV) of a perpetuity is calculated as:
$$
PV = \frac{C}{r}
$$

### Chart Placeholder

The chart below shows the EPS growth example from Notion (your reference image).

<div style="width: 100%; max-width: 600px; margin: 30px auto;">
  <canvas id="epsGrowthChart"></canvas>
</div>

<script>
  // Wait for the entire page (including the canvas element) to load
  document.addEventListener("DOMContentLoaded", function() {
    const ctx = document.getElementById('epsGrowthChart');

    if (ctx) {
      new Chart(ctx, {
        type: 'bar',
        data: {
          labels: ['2019', '2020', '2021', '2022', '2023'],
          datasets: [{
            label: 'EPS (Earnings Per Share)',
            data: [3.2, 3.3, 5.6, 6.1, 6.1],
            backgroundColor: [
                '#3F84B8', '#D3B14F', '#46B860', '#9A5BBD', '#BD7A4F'
            ],
            // Use borderColor and borderWidth if you want outlines on the bars
            borderWidth: 0
          }]
        },
        options: {
            responsive: true,
            // You may need to adjust this to hide the y-axis label
            //  to match the Notion style
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: false
                    },
                    ticks: {
                       // Hide numbers on the side to match Notion's style
                       display: true,
                       callback: function(value, index, values) {
                           return '$' + value;
                       }
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: 'Year'
                    }
                }
            },
            plugins: {
                legend: {
                    display: false // Hides the 'EPS (Earnings Per Share)' box
                    // at the top
                },
                title: {
                    display: true,
                    text: 'EPS of Apple stock in recent years.'
                }
            }
        }
      });
    }
  });
</script>
